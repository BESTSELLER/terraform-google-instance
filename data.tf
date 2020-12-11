data "google_compute_image" "main" {
  family  = var.os_version["family"]
  project = var.os_version["project"]

}