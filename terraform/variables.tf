variable "cloudflare_api_token" {
  description = "CloudFlare API token with Pages:Edit permissions"
  type        = string
  sensitive   = true
}

variable "account_name" {
  description = "CloudFlare account name"
  type        = string
}

variable "project_name" {
  description = "Name of the CloudFlare Pages project"
  type        = string
  default     = "cf-terraform-talk"
}

variable "github_owner" {
  description = "GitHub username or organization"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
}