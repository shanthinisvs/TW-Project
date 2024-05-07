
#Network Values


vnet_address = ["10.0.0.0/16"]
subnet_address = ["10.0.1.0/24"]

tags = "DEV"

location = "East US"


vnet_name = "myVNet01"

admin_username = "admin123"
vm_pwd = "Shanthini123"


# Genral Values
tag_env = "dev"
rg_name = "rg02"

# Vnet Values
virtual_network_name = "vnet02"
create_Vnet = true

# Subnet Values
subnet_cidrs = ["10.10.1.0/24", "10.10.2.0/24"]
subnet_name = ["sub01", "sub02"]
subnet_type = "public"

instance_count = 1
vm_name = "p1-VM"
os_disk_name = "os_disk"
vm_size = "Standard_DS2_v2"

name_nsg = "nsg001"

standard_tags = {
    stnd_tag = {
        Env   = "Dev"
        Owner = "V"
        Project = "p1"
        Location = "East us"
    }
}


nsgrules = [
  {
  name                       = "AllowWebIn"
  priority                   = 100
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = "80"
  source_address_prefix      = "*"
  destination_address_prefix = "*"
  },
  {
  name                       = "AllowSSHIn"
  priority                   = 110
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = "22"
  source_address_prefix      = "*"
  destination_address_prefix = "*"
  },
  {
  name                       = "Allow8080In"
  priority                   = 120
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = "8080"
  source_address_prefix      = "*"
  destination_address_prefix = "*"
  }
]

