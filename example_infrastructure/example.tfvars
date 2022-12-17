location             = "eastus"
resource_group_name  = "rg_eus_azb_od"
public_ip_name       = "pip_eus_azb_od"
virtual_network_name = "vnet_eus_azb_od"
address_space        = ["192.168.42.0/24"]

subnets = {
  "Default" = {
    address_prefixes = ["192.168.42.0/25"]
  }
  "AzureBastionSubnet" = {
    address_prefixes = ["192.168.42.192/26"]
  }
}
