# Capture high outputs in modules using the same block type
# block of type output

output "storage" {
  value       = module.storage.storage
  description = "Usada apenas para criar dependecia"
}