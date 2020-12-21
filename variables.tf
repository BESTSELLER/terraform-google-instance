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
  type        = string
  description = "(optional) describe your variable"
  default     = ""
}

variable "os_version" {
  type        = map
  description = "The os version the server will be created with."
  default = {
    project = "es-standalone-dev-ea40"
    name    = "windows-2019"
  }
}

variable "specs" {
  type        = map
  description = "(optional) describe your variable"
  default = {
    cpu = 1
    ram = 4
  }

  validation {
    condition     = var.specs["ram"] <= var.specs["cpu"] * 6
    error_message = "There is a limit of 6 Gb per CPU. Please increase CPU or decrease RAM."
  }
}

locals {
  network = "projects/network-host-project-5361/regions/europe-west4/subnetworks/${data.google_project.project.name}-default"
  vm_size = "custom-${var.specs["cpu"]}-${var.specs["ram"] * 1024}"
  env     = var.env == "" ? data.google_project.project.labels["env"] : var.env
}
