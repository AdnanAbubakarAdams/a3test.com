terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"  # Adjust to the latest stable version
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}
