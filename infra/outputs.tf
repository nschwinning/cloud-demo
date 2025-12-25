output "server_ipv4" {
  description = "Public IPv4 address of the VM"
  value       = hcloud_server.vm.ipv4_address
}
