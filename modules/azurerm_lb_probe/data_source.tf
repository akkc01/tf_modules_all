data "azurerm_lb" "lb3" {
  name                = var.lb_name
  resource_group_name = var.rg_name
}