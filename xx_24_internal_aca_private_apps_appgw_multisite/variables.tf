variable "prefix" {
  type    = string
  default = "24"
}

variable "location" {
  type    = string
  default = "swedencentral"
}

variable "custom_domain_name" {
  type    = string
  default = "apps.internal"
}

variable "apps" {
  default = ({
    "app01" = {
      name                                = "app01",
      sub_domain_name                     = "app01.apps.internal"
      certificate_name                    = "app01-apps-internal"
      cidr_subnet                         = ["10.0.1.0/24"]
      appgw_request_routing_rule_priority = 100
    },
    "app02" = {
      name                                = "app02",
      sub_domain_name                     = "app02.apps.internal"
      certificate_name                    = "app02-apps-internal"
      cidr_subnet                         = ["10.0.2.0/24"]
      appgw_request_routing_rule_priority = 200
    },
    "app03" = {
      name                                = "app03",
      sub_domain_name                     = "app03.apps.internal"
      certificate_name                    = "app03-apps-internal"
      cidr_subnet                         = ["10.0.3.0/24"]
      appgw_request_routing_rule_priority = 300
  } })
}
