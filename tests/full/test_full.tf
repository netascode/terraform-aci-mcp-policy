terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    aci = {
      source  = "netascode/aci"
      version = ">=0.2.0"
    }
  }
}

module "main" {
  source = "../.."

  name        = "MCP-OFF"
  admin_state = false
}

data "aci_rest" "mcpIfPol" {
  dn = "uni/infra/mcpIfP-${module.main.name}"

  depends_on = [module.main]
}

resource "test_assertions" "mcpIfPol" {
  component = "mcpIfPol"

  equal "name" {
    description = "name"
    got         = data.aci_rest.mcpIfPol.content.name
    want        = module.main.name
  }

  equal "adminSt" {
    description = "adminSt"
    got         = data.aci_rest.mcpIfPol.content.adminSt
    want        = "disabled"
  }
}
