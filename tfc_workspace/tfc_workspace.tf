###########################
# TFC Workspace Resources #
###########################

resource "tfe_workspace" "workspace" {
  name                = "${var.project_type}-${var.cloud_provider}-${var.project_name}-${var.environment}"
  organization        = var.tfc_org_name
  auto_apply          = false
  global_remote_state = true
  queue_all_runs      = false
  terraform_version   = var.terraform_version
  working_directory   = "terraform"
  trigger_prefixes    = ["terraform/*"]
  project_id          = data.tfe_project.project.id

  vcs_repo {
    identifier     = var.vcs_repo
    branch         = var.vcs_branch
    oauth_token_id = "redacted"
  }
}