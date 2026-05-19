resource "azurerm_resource_group" "main" {
  name     = "rg-${var.application-name}-${var.environment-name}"
  location = "West Europe"
}