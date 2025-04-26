########################################
############# Provider config ###########
########################################
terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}
########################################
############ Provider Token ############
########################################
provider "cloudflare" {
  api_token = var.cloudflare_api_token
}