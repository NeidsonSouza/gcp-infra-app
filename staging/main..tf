resource "google_project" "create" {
  name       = "fullstack-${var.env}"
  project_id = "fullstack-${var.env}"
}
