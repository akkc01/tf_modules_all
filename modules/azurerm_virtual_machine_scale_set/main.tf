# resource "azurerm_virtual_machine_scale_set_extension" "nginx_install" {
#   name                         = "nginx-install"
#   virtual_machine_scale_set_id = azurerm_linux_virtual_machine_scale_set.vmss1.id
#   publisher                   = "Microsoft.Azure.Extensions"
#   type                        = "CustomScript"
#   type_handler_version        = "2.1"

#   settings = <<SETTINGS
# {
#   "commandToExecute": "bash -c '
#     sudo apt-get update &&
#     sudo apt-get install -y nginx git &&
#     git clone https://github.com/akkc01/devopsInsiders_dummy_site.git /tmp/site &&
#     sudo rm -rf /var/www/html/* &&
#     sudo cp -r /tmp/site/* /var/www/html/ &&
#     sudo systemctl restart nginx'"
# }
# SETTINGS
# }
