resource "google_artifact_registry_repository" "node-repo" {
  location      = "us-central1"
  repository_id = "node-repo"
  description   = "Docker repository"
  format        = "DOCKER"
  project       = local.project_id
  depends_on    = [google_project_service.art]
}
