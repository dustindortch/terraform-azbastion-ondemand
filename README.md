# terraform-azbastion-ondemand

Working in lab subscriptions, such as Microsoft Partner Network or Visual Studio Subscriptions, spending limits are enforced and are a best practice otherwise.  While Azure Bastion is a great tool for remotely connecting to our networks, [it is rather costly as a singular resource in such subscriptions](https://azure.com/e/9ae93e1f665e4b8aab27f5fbcf8d91b4).

This repository contains an example of existing infrastructure described in Terraform that can be deployed with a virtual network prebuilt with a subnet named "AzureBastionSubnet" and a public IP address.  The principal Terraform code references these existing resources to deploy Azure Bastion.

The workflows that exist will deploy and destroy an Azure Bastion Host on-demand using the repository_dispatch option.  Repository_dispatch can be used to kickoff the workflow from an API call with a Personal Access Token.  My use case is from the Shortcuts app on my iPhone, iPad, or Mac.  I can quickly kick this off just before I am expecting to require Bastion an then destroy.

The `terraform apply` action takes about 10 minutes to execute while the `terraform destroy` action takes about 6 minutes to execute.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.36.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_bastion_host.bastion](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/bastion_host) | resource |
| [azurerm_public_ip.pip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/public_ip) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |
| [azurerm_subnet.subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bastion_host_name"></a> [bastion\_host\_name](#input\_bastion\_host\_name) | n/a | `string` | n/a | yes |
| <a name="input_public_ip_name"></a> [public\_ip\_name](#input\_public\_ip\_name) | n/a | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->