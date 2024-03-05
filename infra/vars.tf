variable "account_id" {
  description = "The CloudFlare account ID"
  type        = string
  sensitive   = true
  validation {
    condition     = length(var.account_id) > 0
    error_message = "The account_id variable must be set"
  }
}

variable "cloudflare_api_token" {
  description = "The CloudFlare API token"
  type        = string
  sensitive   = true
  validation {
    condition     = length(var.cloudflare_api_token) > 0
    error_message = "The cloudflare_api_token variable must be set"
  }
}

variable "r2_bucket_name" {
  description = "The name of the R2 bucket that will be created"
  type        = string
  validation {
    condition     = length(var.r2_bucket_name) > 0
    error_message = "The r2_bucket_name variable must be set"
  }
}

variable "r2_bucket_location" {
  description = "The region in which the R2 bucket will be created"
  type        = string
  default     = "APAC"
  validation {
    condition     = length(var.r2_bucket_location) > 0
    error_message = "The r2_bucket_region variable must be set"
  }
}