terraform {
  cloud {
    organization = "slablan"

    workspaces {
      name = "slab-core"
    }
  }
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "2.9.14"
    }
  }
}

provider "proxmox" {}

module "srv" {
  count  = 1
  source = "app.terraform.io/slablan/ubuntu-vm/proxmox"

  name = "docker-registry"
  vmid = 6201

  bridge          = var.bridge
  gateway_address = var.gw
  ip_address      = var.ip

  cores = 4
  mem   = 8196
  disk  = "50G"
}
