## main.tf

variable "project" { description = "Projeto de implantação" }
variable "region" { description = "Região de implantação" }
variable "zone" { description = "Zona de deploy" }
variable "env" { description = "Ambiente de implantação" }

variable "force_destroy" {
  description = "Só remove bucket se vazio"
  default     = true
}

variable "storage" {
  description = "Mapa de storages"
  type        = map(any)
}
