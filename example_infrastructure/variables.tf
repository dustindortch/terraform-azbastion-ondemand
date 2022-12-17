variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "virtual_network_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "public_ip_name" {
  type = string
}

variable "subnets" {
  type = map(object({
    address_prefixes                               = list(string)
    enforce_private_link_endpoint_network_policies = optional(bool, false)
    enforce_private_link_service_network_policies  = optional(bool, false)
    service_endpoints                              = optional(list(string))
    delegation                                     = optional(map(object({
      service_name                                 = optional(string)
      actions                                      = optional(list(string))
    })), {})
  }))
}