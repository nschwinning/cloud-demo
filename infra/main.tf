resource "hcloud_ssh_key" "default" {
  name       = "opentofu-key"
  public_key = var.ssh_public_key
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

  lifecycle {
    ignore_changes = [
      image
    ]
  }
}
