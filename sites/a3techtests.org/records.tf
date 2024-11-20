############################################
############### zone records ##############
###########################################
resource "cloudflare_record" "root_name" {
  zone_id = cloudflare_zone.azone.id
  name    = "a3techtests.org"
  type    = "CNAME"
  ttl     = 1
  proxied = true
  content = "react-cf-a1c.pages.dev"
}