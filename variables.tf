# commons
variable "project" { description = "Projeto de implantação" }
variable "region" { description = "Região de implantação" }
variable "zone" { description = "Zona de implantação" }
variable "env" { description = "Ambiente de implantação" }
variable "credentials" { description = "Credenciais de acesso de conta de serviço usada para o terraform" }


#
# network with values set via .tfvars file
#
variable "network" {
  description = "Mapa de vpcs a serem criadas"
  type        = map(any)
}
