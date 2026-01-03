## Overview

Demo project to setup a VM on Hetzner Cloud with the help of OpenTofu that initialises k3s using cloud-init to spin up a K8S cluster and to deploy demo services into the cluster and make them externally available.

## Repository Structure

- /infra contains OpenTofu resources as well as cloud-init files.
- /k8s contains all K8S files
- /services contains the service folders for all services that are to be deployed into the cluster

