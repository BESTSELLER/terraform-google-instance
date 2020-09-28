resource "google_compute_instance" "main" {
    name = var.name
    machine_type = "n1-standard-1"
    zone         = "europe-west4"

    boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }

    
  }

  network_interface {
      network = "default"
  }
}