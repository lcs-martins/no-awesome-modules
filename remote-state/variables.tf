# commons
variable "project" { description = "Projeto de implantação" }
variable "region" { description = "Região de implantação" }
variable "zone" { description = "Zona de implantação" }
variable "env" { description = "Ambiente de implantação" }
variable "credentials" { description = "Credenciais de acesso de conta de serviço usada para o terraform" }


#
# remote-state with values set in variable block,
# necessary for generation storage name.
#
variable "storage" {
  description = "Mapa de storages"
  default = {
    name          = "remote-state-test"
    storage_class = "STANDARD"
  } # , ...
}