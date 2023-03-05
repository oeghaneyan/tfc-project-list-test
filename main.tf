data "tfe_outputs" "project_list" {
  organization = "TF-Cloud-Demo-OE"
  workspace =  "tfc-project-mgmt"
}

resource "null_resource" "project-id" {
  for_each = data.tfe_outputs.project_list[*]
  triggers = {
    id = each.value
  }
}

output "project-ids" {
  value = null_resource.project-id
}
