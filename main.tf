data "tfe_outputs" "project_list" {
  organization = "TF-Cloud-Demo-OE"
  workspace =  "tfc-project-mgmt"
}

resource "null_resource" "project-id" {
  for_each = toset(data.tfe_outputs.project_list)
  triggers = {
    id = each.value.id
  }
}

output "project-ids" {
  value = null_resource.project-id
}
