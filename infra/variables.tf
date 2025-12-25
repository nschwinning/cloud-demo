variable "hcloud_token" {
  description = "Hetzner Cloud API Token"
  type        = string
  sensitive   = true
}

variable "ssh_public_key" {
  description = "SSH public key for VM access"
  type        = string
}

variable "server_name" {
  description = "Name of the server"
  type        = string
  default     = "k8s-lab"
}

variable "server_type" {
  description = "Hetzner server type"
  type        = string
  default     = "cpx22"
}

variable "location" {
  description = "Hetzner datacenter location"
  type        = string
  default     = "nbg1"
}
