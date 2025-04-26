# retrieve the existing cloudlare zone
resource "cloudflare_zone" "catfact" {
  zone = var.domain_name
  plan = "free"
  account_id = var.account_id
}


# # Output the zone ID for verification
# output "zone_id" {
#   value = cloudflare_zone.catfact.id
# }