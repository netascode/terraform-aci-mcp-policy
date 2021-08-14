output "dn" {
  value       = aci_rest.mcpIfPol.id
  description = "Distinguished name of `mcpIfPol` object."
}

output "name" {
  value       = aci_rest.mcpIfPol.content.name
  description = "MCP policy name."
}
