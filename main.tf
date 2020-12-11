resource "google_compute_instance" "main" {

  name         = var.name
  project      = var.project
  machine_type = "n1-standard-1"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = data.google_compute_image.main.self_link
    }
  }

  network_interface {
    subnetwork = local.network
  }
}