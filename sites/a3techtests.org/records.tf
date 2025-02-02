############################################
############### zone records ##############
###########################################
# resource "cloudflare_record" "root_name" {
#   zone_id = cloudflare_zone.azone.id
#   name    = "a3techtests.org"
#   type    = "CNAME"
#   ttl     = 1
#   proxied = true
#   content = "react-cf-a1c.pages.dev"
# }

# resource "cloudflare_record" "staging" {
#   zone_id = cloudflare_zone.azone.id
#   name = "@"
#   type = "CNAME"
#   ttl = 1
#   proxied = true
#   content = "staging.react-cf-a1c.pages.dev"
# }

# Example: Manage a DNS record for your Cloudflare Pages site
resource "cloudflare_record" "pages_cname" {
  zone_id = data.cloudflare_zone.azone.id
  name    = "www"
  type    = "CNAME"
  ttl = 1
  proxied = true
  content   = "react-cf-a1c.pages.dev"
}