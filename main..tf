locals {
  project_id = "fullstack-${var.gcp_env}"
  services = [
    "cloudresourcemanager.googleapis.com",
  ]
}

resource "google_project_service" "project" {
  for_each = toset(local.services)
  project  = "core-1s4u"
  service  = each.key
}

resource "google_project" "create" {
  name       = local.project_id
  project_id = local.project_id
  depends_on = [google_project_service.project]
}
