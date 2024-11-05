terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
      version = "~> 0.32"
    }
  }
}

provider "tfe" {
  hostname = var.cloud_hostname
  token    = var.tfe_token 
}