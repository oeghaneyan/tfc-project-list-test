# Example of Leveraging Project ID Output

This repository notes an example of leveraging a project ID output to address the challenge discussed in the below repository-

https://github.com/omeeomi/tfc-project-mgmt/

To reference the certain project from the output the below format can be used- 
```
data.tfe_outputs.projects.nonsensitive_values.< Name of Output>["< Project Name >"]
```
Example from the main.tf file-
```
data.tfe_outputs.projects.nonsensitive_values.project_list["ProjectX"]
```

## Documentation of Terraform Code Used:

### Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | n/a |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [tfe_workspace.TFC-Test-Workspace](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_outputs.projects](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/outputs) | data source |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_hostname"></a> [hostname](#input\_hostname) | Optional- defaults to Terraform Cloud `app.terraform.io`. Normally this is only set for self-managed TFE enviroments. | `string` | `"app.terraform.io"` | no |
| <a name="input_org_name"></a> [org\_name](#input\_org\_name) | Name of TFC Organization. | `string` | n/a | yes |
| <a name="input_token"></a> [token](#input\_token) | Token for TFC Organization. | `string` | n/a | yes |

### Outputs

No outputs.
