resource "azurerm_storage_account" "stg" {
  for_each = var.stg
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "container" {
  name                  = "sandeep123"
  storage_account_name  = "sandeepstg"
  container_access_type = "private"
}