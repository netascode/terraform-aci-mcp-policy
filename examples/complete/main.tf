module "aci_mcp_policy" {
  source  = "netascode/mcp-policy/aci"
  version = ">= 0.0.1"

  name        = "MCP-OFF"
  admin_state = false
}
