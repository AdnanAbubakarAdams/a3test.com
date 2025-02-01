# retrieve the existing cloudlare zone
data "cloudflare_zone" "azone" {
  name = "a3techtests.org"
}


# Output the zone ID for verification
output "zone_id" {
  value = data.cloudflare_zone.azone.id
}