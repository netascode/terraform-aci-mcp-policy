module "aci_mcp_policy" {
  source = "netascode/mcp-policy/aci"

  name        = "MCP-OFF"
  admin_state = false
}
