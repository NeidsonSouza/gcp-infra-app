resource "google_project_service" "project" {
  project    = "core-1s4u"
  service    = "cloudresourcemanager.googleapis.com"
  depends_on = [google_project.create]
}