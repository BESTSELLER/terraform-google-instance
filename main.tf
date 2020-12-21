resource "google_compute_instance" "main" {

  name         = var.name
  project      = var.project
  machine_type = local.vm_size
  zone         = var.zone

  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = data.google_compute_image.main.self_link
    }
  }

  network_interface {
    subnetwork = local.network
  }

  labels = {
    "env" = var.env
  }

}

