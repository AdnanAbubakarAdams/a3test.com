############################################
############### zone records ##############
###########################################
resource "cloudflare_record" "a3test_com" {
  zone_id = cloudflare_zone.azone.id
  name    = "testing"
  type    = "CNAME"
  ttl     = 1
  proxied = true
  content = "testing.a3test.com"
}