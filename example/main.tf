module "web" {
  source = "git@github.com:BESTSELLER/terraform-google-instance.git"

  count   = 2
  name    = "web${count.index}"
  project = var.project
  zone = var.zones[count.index]
  os_version = "windows-2019"
}

module "app" {
  source = "git@github.com:BESTSELLER/terraform-google-instance.git"

  count   = 2
  name    = "app${count.index}"
  project = var.project
  zone = var.zones[count.index]
  os_version = "debian-9"
}

variable "project" {
  default = "es-dev-bc86"
}

variable "zones" {
  type = list
  default = ["europe-west4-a", "europe-west4-b"]
}

