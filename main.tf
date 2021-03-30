module "ask" {
    source = "./module"

    resource_group_name = var.resource_group_name
    network_plugin = var.network_plugin
    load_balancer_sku = var.load_balancer_sku
    service_cidr                 = var.service_cidr
    dns_service_ip               = var.dns_service_ip
    docker_bridge_cidr           = var.docker_bridge_cidr
    network_policy               = var.network_policy
    agent_count                  = var.agent_count
    admin_username               = var.admin_username
    dns_prefix                   = var.dns_prefix
    cluster_name                 = var.cluster_name
    location                     = var.location
    azurerm_virtual_network_name = var.azurerm_virtual_network_name
    azurerm_subnet_name          = var.azurerm_subnet_name
    sp_name                      = var.sp_name
    end_date                     = var.end_date


  # Agent pools values
    agent_pools = var.agent_pools
  # -------------------------

  # Resource group for the node resources
    node_resource_group_name = var.node_resource_group_name
  # -------------------------

  # Tags
    tags = var.tags
  }

module "storage" {
  source = "./storage"

  name                = var.name
  resource_group_name = var.str_resource_group_name
  kind                = var.kind
  location            = var.str_location
  sku                 = var.sku
  access_tier         = var.access_tier
  https_only          = var.https_only
  assign_identity     = var.assign_identity
  blobs               = var.blobs
  containers          = var.containers
  queues              = var.queues
}
