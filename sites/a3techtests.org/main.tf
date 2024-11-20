resource "cloudflare_zone" "azone" {
  zone = var.domain_name
  #   zone_id = var.zone_id
  plan       = "free"
  account_id = var.account_id
}