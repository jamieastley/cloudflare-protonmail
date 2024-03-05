terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 4"
    }
  }
}

provider "cloudflare" {
  api_token = "<YOUR_API_TOKEN>"
}

resource "cloudflare_r2_bucket" "cloudflare-bucket" {
  account_id = "<YOUR_ACCOUNT_ID>"
  name       = "my-tf-test-bucket"
  location   = "apac"
}