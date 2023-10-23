resource "google_service_account" "cluster_service_account" {
  account_id   = "cluster-service-account"
  display_name = "Service Account for GKE cluster VM Instances"
}

resource "google_project_iam_member" "cluster_service_account_role" {
  count = length(var.cluster_roles)
  project = var.project_id
  role    = var.cluster_roles[count.index]
  member  = "serviceAccount:${google_service_account.cluster_service_account.email}"
}