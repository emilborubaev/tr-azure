# --------- Adding all the variables in this deployment ----------

# Cluster variables
variable "network_plugin" {
  description = "The network plugin"
}
variable "load_balancer_sku" {
  description = "Load balancer size"
}
variable "service_cidr" {
  description = "Service cidr"
}
variable "dns_service_ip" {
  description = "Dns service IP"
}

variable "docker_bridge_cidr" {
  description = "Docker bridge cidr"
}

variable "network_policy" {
  description = "Network policy"
}

variable "agent_count" {
  description = "Numbers of node"
}

variable "admin_username" {
  description = "Admin user name"
}

variable "dns_prefix" {
  description = "Dns prefix of the cluster"
}

variable cluster_name {
  description = "Cluster name"
}

variable resource_group_name {
  description = "Resource group of the deployment"
}

variable location {
  description = "Location of cluster"
}
# -------------------------

# Agent pools variables
variable "agent_pools" {
  description = "(Optional) List of agent_pools profile for multiple node pools"
  type = list(object({
    name                = string
    count               = number
    vm_size             = string
    # os_type             = string
    os_disk_size_gb     = number
    max_pods            = number
    # availability_zones  = list(number)
    enable_auto_scaling = bool
    min_count           = number
    max_count           = number
  }))
}
# -------------------------

# Resource group for the node resources
variable "node_resource_group_name" {
    description = "The resource group of the node"
}
# -------------------------

# Existing virtual network and subnet
variable "azurerm_virtual_network_name" {
  description = "The existing virtual network"
  default = "cluster-vnet"
}

variable "azurerm_subnet_name" {
  description = "The existing subnet"
  default = "aks-subnet"
}
# ---------------------------

# Service principal variables
variable "sp_name" {
  description = "Service principal name"
  default = "sp-name"
}
variable "end_date" {
  description = "The End Date which the Password is valid until, formatted as a RFC3339 date string (e.g. 2018-01-01T01:02:03Z)."
  type        = string
  default     = "2030-01-01T00:00:00Z"
}
# --------------------
# Tags
variable "tags" {
  type = map
  description = "Tags for all the resources"
}
# -----------------
variable "local_file" {
  type = string
  description = "kube_config_file"
  default = "azurerm_kubernetes_cluster.aks.kube_config_raw"
}
# -----------------  

#### storage variables

variable "name" {
  type        = string
  description = "The name of the storage account."
}

variable "str_resource_group_name" {
  type        = string
  description = "The name of an existing resource group."
}

variable "str_location" {
  type        = string
  default     = "eastus"
  description = "The name of the location."
}

variable "kind" {
  type        = string 
  default     = "FileStorage" #"StorageV2"
  description = "The kind of storage account."
}

variable "sku" {
  type        = string
  default     = "Standard_RAGRS"
  description = "The SKU of the storage account."
}

variable "access_tier" {
  type        = string
  default     = "Hot"
  description = "The access tier of the storage account."
}

variable "https_only" {
  type        = bool
  default     = true
  description = "Set to `true` to only allow HTTPS traffic, or `false` to disable it."
}

variable "assign_identity" {
  type        = bool
  default     = true
  description = "Set to `true` to enable system-assigned managed identity, or `false` to disable it."
}

variable "blobs" {
  type        = list(any)
  default     = []
  description = "List of storage blobs."
}

variable "containers" {
  type = list(object({
    name        = string
    access_type = string
  }))
  default     = []
  description = "List of storage containers."
}

variable "queues" {
  type        = list(string)
  default     = []
  description = "List of storages queues."
}

variable "shares" {
  type = list(object({
    name  = string
    quota = number
  }))
  default     = []
  description = "List of storage shares."
}

variable "tables" {
  type        = list(string)
  default     = []
  description = "List of storage tables."
}

