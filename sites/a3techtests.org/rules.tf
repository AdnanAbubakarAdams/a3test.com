###########custom rules #############
resource "cloudflare_ruleset" "a3_techtest_org_custom_rules" {
  zone_id = data.cloudflare_zone.azone.id
  name = "ingress rules"
  description = "custom rules for zone"
  kind = "zone"
  phase = "http_request_firewall_custom"

  rules {
    action = "skip"
    expression = "(http.host contains \".org\" and ip.src in {170.85.72.0/24 170.85.73.0/24 170.85.71.0/24 68.197.1.0/24})"
    description = "FW-RULE-ALLOW LIST"
    enabled = true
  }
}