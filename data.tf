data "google_compute_image" "main" {
  family  = var.os_version
  project = var.project
}