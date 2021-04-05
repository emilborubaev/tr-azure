
# tr-azure kubernetes cluster
set up your Azure account

run the command : brew install azure-cli

run : az login

## Azure storage for backend file ### optional ###
If you want to keep your "terraform state files" in separate bucket in order to keep versions.

https://docs.microsoft.com/en-us/azure/storage/common/storage-account-create?toc=%2Fazure%2Fstorage%2Fblobs%2Ftoc.json&tabs=azure-portal

Resource group(required) -  is a container that holds related resources for an Azure solution.

Storage account(required)- An Azure storage account contains all of your Azure Storage data objects: blobs, files, queues, tables, and disks.

go to resource group in aks


# These variables should be populated in the azure.tfvarsfile
 - resource_group_name -- AKS resource group
 - network_plugin -- AKS network plugin
 - network_policy -- Use Calico network policy(an open-source network and network security solution) 
 - agent_count -- The Microsoft Azure Virtual Machine Agent
 - admin_username -- Azure user
 - cluster_name   -- Cluster name to create
 - load_balancer_sku -- example: "Basic"
 - service_cidr    -- given cider block if requested
 - dns_service_ip
 - dns_prefix
 - location -- Azure cloud clusters location
 - node_resource_group_name
 - azurerm_virtual_network_name
 - sp_name -- An Azure service principal is an identity created for use with applications, hosted services, and automated tools to access Azure resources.


- kubernetes_version = "1.18.10"


run in cli:  terraform init  

run : terraform plan --auto-approve -var-file azure.tfvars

run : terrafor apply --auto-approve -var-file azure.tfvars

# Connecttion instruction to Azure kubernetes cluster 
in the Azure portal where created cluster 
- run "az aks get-credentials --resource-group (your resource group name) --name (cluster name)"
it might ask to overwright kubeconfig file >>> press "Y"




