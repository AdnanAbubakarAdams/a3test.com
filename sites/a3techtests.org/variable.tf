#########################################
############ storing Variables ##########
#########################################
variable "zone_id" {
  type        = string
  description = "The zone ID for Cloudflare"
}

variable "account_id" {
  type        = string
  description = "The account ID for Cloudflare"
}

variable "cloudflare_api_token" {
  type        = string
  description = "The cloudflare API token"
}

variable "domain_name" {
  type        = string
  description = "The domain name on Cloudflare"
  default     = "a3techtests.com"
}