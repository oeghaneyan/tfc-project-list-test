data "tfe_outputs" "projects" {
  organization = "TF-Cloud-Demo-OE"
  workspace =  "tfc-project-mgmt"
}

#variable "project_list_var" {
#  type        = string
#  default = [{ data.tfe_outputs.project_list.values.project_list }]
#}

resource "tfe_workspace" "TFC-Test-Workspace" {
  name         = "TFC-Test-Workspace"
  organization = "TF-Cloud-Demo-OE"
  tag_names    = ["test", "app"]
#  project_id   = data.tfe_outputs.projects.values.project_list #["ProjectX"]
  project_id   = lookup(data.tfe_outputs.projects.values.project_list[id], "ProjectX")
  
#  data.tfe_outputs.project_list.values(project[ProjectX].id)
}
