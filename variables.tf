variable "client_id" {}
variable "client_secret" {}

#  Numbers of node
variable "agent_count" {
    default = 3
}

#  Size of nodes
variable "agent_size" {
    default = 3
}


# path for ssh key 
variable "ssh_public_key" {
    default = "~/.ssh/id_rsa.pub"
}


variable "dns_prefix" {
    default = "terra-aks"
}

#  Set the cluster name
variable cluster_name {
    default = "terra-aks"
}


variable resource_group_name {
    default = "azure-terra-aks"
}

#  Set the cluster region

variable location {
    default = "Central US"
}

# log analytics workspace name
variable log_analytics_workspace_name {
    default = "terraAksLogAnalytics"
}

# log analytics region
variable log_analytics_workspace_location {
    default = "eastus"
}

#  log analytics for pricing 
variable log_analytics_workspace_sku {
    default = "PerGB2018"
}