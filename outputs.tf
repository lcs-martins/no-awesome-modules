# Capture high outputs in modules using the same block type
# block of type output

output "network" {
  value       = module.vpc.network
  description = "Usada apenas para criar dependecia"
}
output "subnetwork" {
  value       = module.vpc.subnetwork
  description = "Usada apenas para criar dependecia"
}