#################
# TFC Variables #
#################

variable "project_type" {
  description = "The type of project being deployed (infra, app, etc.)"
  type        = string
  default     = "infra"
}

variable "cloud_provider" {
  description = "The provider being used to deploy the resources (azure, aws, gcp, vmware, etc)"
  type        = string
  default     = "aws"
}

variable "tfc_org_name" {
  description = "The name of the Terraform Cloud Organization"
  type        = string
  default     = "redacted"
}

variable "terraform_version" {
  description = "The version of Terraform to use for the workspace"
  type        = string
  default     = "1.5.6"
}

variable "tfc_project_name" {
  description = "The project ID to create the workspace under"
  type        = string
}

variable "vcs_branch" {
  description = "The branch to track for the workspace"
  type        = string
}

variable "tfe_token" {
  type        = string
  description = "API token for Terraform Cloud or Terraform Enterprise"
  sensitive   = true
}

variable "cloud_hostname" {
  type        = string
  description = "Default for Terraform Cloud; change if using Terraform Enterprise"
  default     = "app.terraform.io"
}

###########################
# Project Level Variables #
###########################

variable "environment" {
  description = "The environment of the resources being deployed (dev, test, prod, etc)"
  type        = string
}

variable "owner" {
  description = "The name of the team or person who owns the deployed resources"
  type        = string
}

variable "owner_email" {
  description = "The DL or email of the owner of the resources"
  type        = string
}

variable "project_name" {
  description = "The name of the project the resources supports"
  type        = string
}

variable "cost_center" {
  description = "The cost center to be charged for the resources"
  type        = string
}

variable "vcs_repo" {
  description = "The path to the VCS repo that manages the deployed resources"
  type        = string
}


#################
# WORKSPACE Variables #
#################

variable "tf_cli_args_plan" {
  type        = string
  default     = "-var-file='stage.tfvars'"
}

# TODO Add project level and resource variables after these entries