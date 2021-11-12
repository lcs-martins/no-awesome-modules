variable "project" { description = "Projeto de implantação" }
variable "region" { description = "Região de implantação" }
variable "zone" { description = "Zona de deploy" }
variable "env" { description = "Ambiente de implantação" }

variable "default-network" {
  type = map(any)
  default = {
    secondary_ip_range = [
      {
        range_name    = "default-range"
        ip_cidr_range = "10.10.0.0/24"
      }
    ]
  }
}

variable "network" {
  description = "Mapa de network"
  type        = map(any)
}

# variable "network" {
#   description = "Mapa de network"
#   type        = map(any)
#   default     = {
#     network = {
#       subnet-ip-range = "10.9.0.0/24"
#       # secondary_ip_range = [ {} ]
#       secondary_ip_range = [
#         {
#           range_name = "default-range"
#           ip_cidr_range = "10.11.0.0/24"
#         },
#         { 
#           range_name = "test-range"
#           ip_cidr_range = "10.12.0.0/24"
#         }#, ...
#       ]
#     }
#   }
# }
