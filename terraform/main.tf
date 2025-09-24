resource "cloudflare_pages_project" "static_site" {
  account_id        = data.cloudflare_accounts.main.accounts[0].id
  name              = var.project_name
  production_branch = "main"

  # Source Configuration 
  # (uses main branch to trigger deployments via GitHub integration)
  source {
    type = "github"
    config {
      owner                         = var.github_owner
      repo_name                    = var.github_repo
      production_branch            = "main"
      pr_comments_enabled          = true
      deployments_enabled          = true
      production_deployment_enabled = true
      preview_deployment_setting    = "none"
    }
  }

  # Build configuration for static HTML
  build_config {
    build_command       = ""
    destination_dir     = "app"
    root_dir           = ""
    web_analytics_tag  = ""
    web_analytics_token = ""
  }

  # Deployment configuration
  deployment_configs {
    production {
      environment_variables = {
        ENVIRONMENT = "production"
      }
      usage_model = "standard"
      placement {
        mode = "smart"
      }
    }
  }
}
