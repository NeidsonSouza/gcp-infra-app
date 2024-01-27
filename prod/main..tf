resource "google_project" "create" {
  name       = "fullstack-${var.gcp_env}"
  project_id = "fullstack-${var.gcp_env}"
}
