terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatebaivabremote"
    container_name       = "tfstate"
    key                  = "dev.gitops.tfstate"
    use_azuread_auth     = false
    use_msi              = true
  }
}
