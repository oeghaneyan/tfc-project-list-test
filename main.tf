provider "tfe" {
  hostname = var.hostname # Optional, defaults to Terraform Cloud `app.terraform.io`
  token    = var.token
}

data "tfe_outputs" "projects" {
  organization = "TF-Cloud-Demo-OE"
  workspace =  "tfc-project-mgmt"
}

resource "tfe_workspace" "TFC-Test-Workspace" {
  name         = "TFC-Test-Workspace"
  organization = var.org_name
  tag_names    = ["test"]
  project_id   = data.tfe_outputs.projects.nonsensitive_values.project_list["ProjectX"]

}
