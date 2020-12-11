data "google_compute_image" "main" {
  family  = var.os_version["family"]
  project = var.os_version["project"]

}

data "google_project" "project" {
  project_id = var.project
}
