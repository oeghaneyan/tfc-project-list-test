data "tfe_outputs" "project_list" {
  organization = "TF-Cloud-Demo-OE"
  workspace =  "tfc-project-mgmt"
}

resource "tfe_workspace" "TFC-Test-Workspace" {
  name         = "TFC-Test-Workspace"
  organization = "TF-Cloud-Demo-OE"
  tag_names    = ["test", "app"]
  project_id   = "${data.tfe_outputs.project_list.values.project[ProjectX].id}"
  "${data.aws_ami.app_ami.id}"
}
