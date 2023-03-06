# Example of Leveraging Project ID Output

This repository notes an example of leveraging a project ID output to address the challenge discussed in the below repository-

https://github.com/omeeomi/tfc-project-mgmt/

To reference the certain project from the output the below format can be used- 
data.tfe_outputs.projects.nonsensitive_values.< Name of Output>["< Project Name >"]

Example from the main.tf file-
```
data.tfe_outputs.projects.nonsensitive_values.project_list["ProjectX"]
```
