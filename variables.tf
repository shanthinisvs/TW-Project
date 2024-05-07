# Network Variables
variable "vnet_name" {}
variable "vnet_address" {
  type = list
}

variable "subnet_address" {
  type = list
}


variable "tags" {}

variable "location" {
  
}

#variable "General" {}

#vnet variable  {}
variable "create_Vnet" {}
variable "address_space" {
  description = "CIDRs for virtual network"
  type        = list(string)
  default = [ "10.10.0.0/16" ]
}
variable "dns_servers" {
  description = "If applicable, a list of custom DNS servers to use inside your virtual network.  Unset will use default Azure-provided resolver"
  type        = list(string)
  default     = null
}

#variable "General" {}

variable "name_nsg" {
  description = "names to be applied to resources"
  type        = string
}

variable "virtual_network_name" {
  description = "virtual network name"
  type        = string
}

variable "tag_env" {}


variable "naming_rules" {
  description = "naming conventions yaml file"
  type        = string
  default     = ""
}

variable "enforce_subnet_names" {
  description = "enforce subnet naming rules"
  type        = bool
  default     = false
}

#Subnet variable  {}


variable "subnet_type" {
  description = "subnet type"
  type        = string
}

variable "subnet_name" {
  description = "subnet name"
  type        = list(string)
}

variable "subnet_cidrs" {
  description = "CIDRs for subnet"
  type        = list(string)
}

variable "create_nsg" {
  description = "Create/associate network security group"
  type        = bool
  default     = true
}

variable "configure_nsg_rules" {
  description = "Configure network security group rules"
  type        = bool
  default     = false
}

variable "allow_internet_outbound" {
  description = "allow outbound traffic to internet"
  type        = bool
  default     = false
}

variable "allow_lb_inbound" {
  description = "allow inbound traffic from Azure Load Balancer"
  type        = bool
  default     = false
}

variable "allow_vnet_inbound" {
  description = "allow all inbound from virtual network"
  type        = bool
  default     = false
}

variable "allow_vnet_outbound" {
  description = "allow all outbound from virtual network"
  type        = bool
  default     = false
}

#variable "General" {}
variable "rg_name" {}

#VM variable  {}
variable "vm_name" {}
variable "vm_size" {}
variable "os_disk_name" {}


#Cred variable  {}
variable "admin_username" {}
variable "vm_pwd" {}



variable "instance_count" {}

variable "standard_tags" {
  type = map(object(
    {
    Project  = string
    Env   = string
    Owner = string
    Location = string
  }))
}


variable "nsgrules" {
  type = list(object({
    name      = string
    priority  = number
    direction = string
    access    = string
    protocol  = string
    source_port_range       = string
    destination_port_range  = string
    source_address_prefix   = string
    destination_address_prefix = string
  }))
}
