terraform {
  backend "azurerm" {
    resource_group_name  = "tstate"
    storage_account_name = "tstate29570"
    container_name       = "azcontainer"
    #access_key           = "pF/GJ6qr62uEEfg1xpEVoCBA8DOMkRbmefMiDwlpoGqZg8ljgEnlOtj2wSPWdRtU9hkrLHyK5g3Z/9GxOn3UQw=="
    key                  = "terraform.azcontainer"
  }
}