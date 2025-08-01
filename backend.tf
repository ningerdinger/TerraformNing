# terraform {
#   backend "azurerm" {
#     resource_group_name  = "${azurerm_resource_group.ning_rg.name}"
#     storage_account_name = "${azurerm_storage_account.backend.name}"   # replace with your actual name
#     container_name       = "${azurerm_storage_container.state.name}"
#     key                  = "envs/prod.terraform.tfstate"
#   }
# }
