resource "google_project_service" "project" {
  project    = local.project_id
  service    = "cloudresourcemanager.googleapis.com"
  depends_on = [google_project.create]
}