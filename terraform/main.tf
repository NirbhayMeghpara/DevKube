resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region
  initial_node_count = 1
  deletion_protection = false

  node_config {
    machine_type = "e2-medium"
    image_type   = "cos_containerd"
    disk_type    = "pd-standard"
    disk_size_gb = 10
  }
}