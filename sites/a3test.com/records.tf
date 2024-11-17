############################################
############### zone records ##############
###########################################
resource "cloudflare_record" "root_name" {
  zone_id = cloudflare_zone.azone.id
  name    = "@"
  type    = "CNAME"
  ttl     = 1
  proxied = true
  content = "testing.a3test.com"
}