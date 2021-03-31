network_plugin                   = "kubenet"
load_balancer_sku                = "Basic"
service_cidr                     = "10.0.0.0/16"
dns_service_ip                   = "10.0.0.10"
docker_bridge_cidr               = "172.17.0.1/16"
network_policy                   = "calico"
agent_count                      = 2
admin_username                   = "vm-user"
dns_prefix                       = "aks-dns-name"
cluster_name                     = "ask-name"
resource_group_name              = "CLUSTER-RG"
location                         = "East US"
agent_pools                      = [{
    name                         = "pool1"
    count                        = 1
    vm_size                      = "Standard_D2s_v3"
    os_disk_size_gb              = 30
    max_pods                     = 30
    enable_auto_scaling          = true
    min_count                    = 1
    max_count                    = 3
  }]
node_resource_group_name         = "aks-node-rg"
azurerm_virtual_network_name     = "cluster-vnet"
azurerm_subnet_name              = "aks-subnet"
sp_name                          = "sp-newname"
end_date                         = "2030-01-01T00:00:00Z"
tags                             = {
    EnvType     = "Non-Production"
    SenType     = "Not Applicable"
    Deployer    = "Llazar Gjermeni"
    DeployDate  = "03-09-202`"
    DeptName    = "Aks Delivery"
    Sensitivity = "Non-Sensitive"
    Department  = "Kubernetes"

  }
local_file                       = "azurerm_kubernetes_cluster.aks.kube_config_raw"

#### storage variables
name                             = "straccmod"
str_resource_group_name          = "storage-rg"
str_location                     = "eastus"
kind                             = "FileStorage"
sku                              = "Standard_RAGRS"
access_tier                      = "Hot"
https_only                       = true
assign_identity                  = true
blobs                            = []
containers                       = []
queues                           = []
shares                           = [
    {
      name  = "chelek"
      quota = 5120
    }
  ]
tables                           = []