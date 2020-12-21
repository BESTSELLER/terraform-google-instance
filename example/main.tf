module "web" {
  source = "git@github.com:BESTSELLER/terraform-google-instance.git"

  count   = 2
  name    = "web${count.index}"
  project = var.project
  zone    = var.zones[count.index]
  os_version = {
    name    = "windows-2019"
  }
}

variable "project" {
  default = "bw2-pri-dev-dd7e"
}

variable "zones" {
  type    = list
  default = ["europe-west4-a", "europe-west4-b"]
}

