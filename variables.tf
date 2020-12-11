variable "name" {
  type        = string
  description = "The name of the compute instance"
}

variable "project" {
  type        = string
  description = "The project id for where the instance will be created"
}

variable "zone" {
  type        = string
  description = "which zone the instance will be created."
}

variable "env" {
  type = string
  description = "(optional) describe your variable"
  default = ""
}

variable "os_version" {
  type        = map
  description = "The os version the server will be created with."
  default = {
    project = "windows-cloud"
    family  = "windows-2019"
  }
}

locals {
  network    = "projects/network-host-project-5361/regions/europe-west4/subnetworks/${data.google_project.project.name}-default"
  #     /network-host-project-${data.google_project.project.labels["trust_zone"]}-trusted-zone-shared-vpc"
  # projects/network-host-project-5361/regions/europe-west4/subnetworks/jazz-pri-dev-default
  # db_vm_size = "db-custom-${var.cpu_cores}-${var.ram_gb * 1024}"
  env        = var.env == "" ? data.google_project.project.labels["env"] : var.env
}
