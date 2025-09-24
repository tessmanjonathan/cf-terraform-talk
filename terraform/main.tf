module "devopsdsm_site" {
    source = "../modules/cloudflare_page"
    
    account_name = "jtessman-sa"
    project_name = "cf-terraform-talk"

    github_owner = "tessmanjonathan"
    github_repo = "cf-terraform-talk"
    github_branch = "main"

    build_command = ""
    application_directory = "app"
}