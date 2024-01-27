locals {
  project_id = "fullstack-${var.gcp_env}"
}

resource "google_project" "create" {
  name       = local.project_id
  project_id = local.project_id
}
