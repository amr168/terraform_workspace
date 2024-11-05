######################
# TFC Data Providers #
######################

data "tfe_project" "project" {
  name         = var.tfc_project_name
  organization = var.tfc_org_name
}