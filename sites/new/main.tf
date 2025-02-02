# provider "cloudflare" {
#   api_token = var.cloudflare_api_token
# }

# Retrieve the existing Cloudflare zone
data "cloudflare_zone" "azone" {
  name = "a3techtests.org"
}

# Example: Manage a DNS record for your Cloudflare Pages site
resource "cloudflare_record" "pages_cname" {
  zone_id = data.cloudflare_zone.azone.id
  name    = "www"
  content   = "react-cf-a1c.pages.dev"
  type    = "CNAME"
  proxied = true
}

# Output the zone ID for verification`
output "zone_id" {
  value = data.cloudflare_zone.azone.id
}
