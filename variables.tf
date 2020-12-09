variable "name" {
    type = string
    description = "The name of the compute instance"
}

variable "project" {
  type = string
  description = "The project id for where the instance will be created"
}

variable "region" {
  type = string
  description = "which zone the instance will be created."
  default = "europe-west4"
}