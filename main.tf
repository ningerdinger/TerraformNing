# Create a resource group using the generated random name
resource "azurerm_resource_group" "ning_rg" {
  location = var.resource_group_location
  name     = "${var.resource_group_name_prefix}-testning" 
}

resource "azurerm_storage_account" "backend" {
  name                     = "ningsabackendstatefile"
  resource_group_name      = azurerm_resource_group.ning_rg.name
  location                 = azurerm_resource_group.ning_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "state" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.backend.name
  container_access_type = "private"
}