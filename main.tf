#=== STATE ==================================================================
# For testing this, I used local
# Other option: https://developer.hashicorp.com/terraform/language/settings/backends/s3
terraform {
  backend "local" {
    path = "state/terraform.tfstate"
    workspace_dir = "state/"
  }
}

#=== PROVIDERS ==============================================================
terraform {
  required_providers {
    bitbucket = {
      source = "drfaust92/bitbucket"
      version = "2.21.3"
    }
  }
}

#--- PROVIDERS - BITBUCKET --------------------------------------------------
variable "BITBUCKET_USERNAME" {
  description = "Bitbucket username"
  type        = string
  sensitive   = true
}
variable "BITBUCKET_PASSWORD" {
  description = "Bitbucket password / access token"
  type        = string
  sensitive   = true
}

provider "bitbucket" {
  username = var.BITBUCKET_USERNAME
  password = var.BITBUCKET_PASSWORD
}

#=== MODULES ================================================================
module "terraform-src" {
  source = "./terraform-src"
}
