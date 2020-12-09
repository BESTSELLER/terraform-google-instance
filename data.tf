data "google_compute_image" "main" {
  family = regex("[a-z]+-[0-9]+",var.os_version)
  project  = regex("[a-z]+-cloud",var.os_version)
  
}