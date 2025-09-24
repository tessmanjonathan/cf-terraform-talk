# Data source to get account information
data "cloudflare_accounts" "main" {
  name = var.account_name
}
