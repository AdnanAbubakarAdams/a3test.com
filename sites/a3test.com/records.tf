############################################
############### zone records ##############
###########################################
resource "cloudflare_record" "testing_a3techtest_org" {
  zone_id = cloudflare_zone.azone.id
  name    = "testing"
  type    = "CNAME"
  ttl     = 1
  proxied = true
  content = "testing.a3test.com"
}