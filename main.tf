resource "aci_rest" "mcpIfPol" {
  dn         = "uni/infra/mcpIfP-${var.name}"
  class_name = "mcpIfPol"
  content = {
    name    = var.name
    adminSt = var.admin_state == true ? "enabled" : "disabled"
  }
}
