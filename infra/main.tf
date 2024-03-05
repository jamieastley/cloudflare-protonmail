terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

resource "cloudflare_r2_bucket" "cloudflare-bucket" {
  account_id = var.account_id
  name       = var.r2_bucket_name
  location   = var.r2_bucket_location
}