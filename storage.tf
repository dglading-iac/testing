resource "azurerm_resource_group" "primary" {
  name     = "dave-rg"
  location = "eastus"
}


resource azurerm_storage_account "primary" {
  name                     = "dave-storage"
  resource_group_name      = azurerm_resource_group.primary.name
  location                 = azurerm_resource_group.primary.location
  account_kine             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource azurerm_storage_container "daves-blobs" {
  name                  = "daves-blobs"
  storage_account_name  = azurerm_storage_account.primary.name
  #container_access_type = "private"
}
