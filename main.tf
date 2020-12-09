resource "google_compute_instance" "main" {

    name = var.name
    project = var.project
    machine_type = "n1-standard-1"
    zone         = data.google_compute_zones.available[count.index]

    boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }

    
  }

  network_interface {
      network = "default"
  }
}