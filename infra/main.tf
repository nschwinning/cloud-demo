resource "hcloud_ssh_key" "default" {
  name       = "opentofu-key"
  public_key = var.ssh_public_key
}

data "template_file" "cloud_init" {
  template = file("${path.module}/cloud-init.yaml")
}

resource "hcloud_server" "vm" {
  name        = var.server_name
  image       = "ubuntu-22.04"
  server_type = var.server_type
  location    = var.location

  ssh_keys = [
    hcloud_ssh_key.default.id
  ]

  public_net {
    ipv4_enabled = true
    ipv6_enabled = false
  }

  user_data = data.template_file.cloud_init.rendered

  lifecycle {
    ignore_changes = [
      image
    ]
  }
}
