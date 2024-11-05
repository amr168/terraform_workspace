##########################
# TFC Variable Resources #
##########################

resource "tfe_variable" "environment" {
  category     = "terraform"
  key          = "environment"
  value        = var.environment
  workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "project_name" {
  category     = "terraform"
  key          = "project_name"
  value        = var.project_name
  workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "owner" {
  category     = "terraform"
  key          = "owner"
  value        = var.owner
  workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "owner_email" {
  category     = "terraform"
  key          = "owner_email"
  value        = var.owner_email
  workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "cost_center" {
  category     = "terraform"
  key          = "cost_center"
  value        = var.cost_center
  workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "vcs_repo" {
  category     = "terraform"
  key          = "vcs_repo"
  value        = var.vcs_repo
  workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "workspace_env_vars" {
  category     = "env"
  key          = "TF_CLI_ARGS_plan"
  value        = var.tf_cli_args_plan
  workspace_id = tfe_workspace.workspace.id
}

# TODO Add project level and resource variables after these entries