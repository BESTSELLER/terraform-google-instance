module "web" {
  source = "git@github.com:BESTSELLER/terraform-google-instance.git"

  count   = 2
  name    = "web${count.index}"
  project = var.project
}

module "app" {
  source = "git@github.com:BESTSELLER/terraform-google-instance.git"

  count   = 2
  name    = "app${count.index}"
  project = var.project
}


variable "project" {
  default = "es-dev-bc86"
}

variable "zones" {
  type = list
  default = ["europe-west4a", "europe-west4b"]
}