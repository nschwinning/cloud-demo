# Infrastructure

This folder provisions a single VM in the Hetzner Cloud using OpenTofu.

- Provider: Hetzner Cloud
- OS: Ubuntu 22.04
- Purpose: Kubernetes (k3s) hobby lab


## Commands

Run the following commands from the /infra folder where tofu was initialised using `tofu init`.

Apply changes locally:
```sh
tofu plan
tofu apply
```

Destroy locally:
```sh
tofu destroy
tofu apply
```

Get VM info:
```sh
tofu state show hcloud_server.vm
```