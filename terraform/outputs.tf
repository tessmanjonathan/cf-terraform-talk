output "pages_url" {
  description = "The Static Site Pages URL"
  value       = "https://${cloudflare_pages_project.static_site.name}.pages.dev"
}

output "project_id" {
  description = "The CloudFlare Pages project ID"
  value       = cloudflare_pages_project.static_site.id
}