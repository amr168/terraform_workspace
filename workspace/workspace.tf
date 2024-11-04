resource "tfe_workspace" "workspace" {
  name                = "test-aws-tf_cloud_test"
  organization        = "Ops_Terraform"
  auto_apply          = false
  global_remote_state = true
  queue_all_runs      = false
  terraform_version   = "~> 5.0"
  working_directory   = "terraform"
  trigger_prefixes    = ["terraform/*"]
  project_id          = "prj-d2Utruro6sxyRHnp"

  vcs_repo {
    identifier     = "https://github.com/amr168/terraform_workspace.git"
    branch         = "main"
    oauth_token_id = "redacted"
  }
}