variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
  default     = "csci5409-453115"
}

variable "cluster_name" {
  description = "GKE cluster"
  type        = string
  default     = "gke-assignment-cluster"
}

variable "region" {
  description = "GKE cluster region"
  type        = string
  default     = "us-central1"
}