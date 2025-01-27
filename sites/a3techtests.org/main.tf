# locals {
#   domain = "react-cf-a1c.pages.dev"
# }

resource "cloudflare_zone" "azone" {
  # zone = var.domain_name
  zone = ""
  #   zone_id = var.zone_id
  plan       = "free"
  account_id = var.account_id
}