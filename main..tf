locals {
  project_id = "fullstack-${var.gcp_env}"
}

resource "google_project_service" "project" {
  project = "core-1s4u"
  service = "cloudresourcemanager.googleapis.com"
}

resource "google_project" "create" {
  name       = local.project_id
  project_id = local.project_id
  depends_on = [google_project_service.project]
}
