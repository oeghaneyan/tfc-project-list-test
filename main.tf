data "tfe_outputs" "project_list" {
  organization = "TF-Cloud-Demo-OE"
  workspace =  "tfc-project-mgmt"
}

#variable "project_list_var" {
#  type = map
#  default = { data.tfe_outputs.project_list.value }
#}

resource "tfe_workspace" "TFC-Test-Workspace" {
  name         = "TFC-Test-Workspace"
  organization = "TF-Cloud-Demo-OE"
  tag_names    = ["test", "app"]
  project_id   = lookup(data.tfe_outputs.project_list.values[value.id], "ProjectX")
  
#  data.tfe_outputs.project_list.values(project[ProjectX].id)
}
