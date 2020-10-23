module "service_account" {
  source = "../service_account_encrypted_on_gcs"

  project_id  = var.project
  bucket_name = var.service_account_bucket_name

  name = "gcp-gke-account"
  project_roles = [
    "${var.project}=>roles/container.admin",
    "${var.project}=>roles/container.clusterAdmin",
    "${var.project}=>roles/iam.serviceAccountUser",
  ]
}
