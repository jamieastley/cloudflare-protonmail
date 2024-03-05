## cloudflare-protonmail

Creates required DNS records for ProtonMail within CloudFlare.

### Prerequisites

- 1Password Service Account
- CloudFlare R2 API Token
  - to store infrastructure Terraform State

### Required GitHub Actions Secrets

- `TF_VAR_R2_BUCKET_NAME`
- `OP_SERVICE_ACCOUNT_TOKEN`