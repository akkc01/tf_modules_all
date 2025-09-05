# resource "azurerm_monitor_autoscale_setting" "autoscale1" {
#   name                = var.autoscale_name
#   resource_group_name = var.rg_name
#   location            = var.location
#   target_resource_id  = azurerm_linux_virtual_machine_scale_set.example.id
#   enabled             = true

#   profiles {
#     name = "defaultProfile"

#     capacity {
#       minimum = "1"
#       maximum = "5"
#       default = "1"
#     }

#     rules {
#       metric_trigger {
#         metric_name        = "Percentage CPU"
#         metric_resource_id = azurerm_linux_virtual_machine_scale_set.example.id
#         time_grain         = "PT1M"
#         statistic          = "Average"
#         time_window        = "PT5M"
#         time_aggregation   = "Average"
#         operator           = "GreaterThan"
#         threshold          = 75
#       }

#       scale_action {
#         direction = "Increase"
#         type      = "ChangeCount"
#         value     = "1"
#         cooldown  = "PT5M"
#       }
#     }

#     rules {
#       metric_trigger {
#         metric_name        = "Percentage CPU"
#         metric_resource_id = azurerm_linux_virtual_machine_scale_set.example.id
#         time_grain         = "PT1M"
#         statistic          = "Average"
#         time_window        = "PT5M"
#         time_aggregation   = "Average"
#         operator           = "LessThan"
#         threshold          = 25
#       }

#       scale_action {
#         direction = "Decrease"
#         type      = "ChangeCount"
#         value     = "1"
#         cooldown  = "PT5M"
#       }
#     }
#   }

#   notification {
#     email {
#       send_to_subscription_administrator    = false
#       send_to_subscription_co_administrator = false
#       custom_emails                         = ["you@example.com"] # Optional
#     }
#     webhook {
#       service_uri = "https://your-webhook-url.com" # Optional
#     }
#   }
# }
