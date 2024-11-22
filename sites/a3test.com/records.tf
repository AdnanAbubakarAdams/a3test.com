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

resource "cloudflare_record" "www" {
  zone_id = cloudflare_zone.azone.id
  name = "www-r"
  type = "CNAME"
  ttl = 1
  proxied = true
  content = "www.a3test.com"
}