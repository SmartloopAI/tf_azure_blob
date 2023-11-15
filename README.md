# tf_azure_blob 

Terraform plan for provision azure blob storage for static websites



## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| subscripton\_id| Azure Subscription ID  | `string` | null | yes |
| resource\_name | Name of resource group | `string` | null | yes |
| location | Azure region | `string` | eastus | no |


## Outputs

None

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0.1 |
| azurerm | >= 3.0.0 |

