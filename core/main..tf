resource "random_string" "random" {
  length  = 3
  upper   = false
  special = false
}

resource "google_project" "create" {
  name       = "fullstack-${var.env}-${random_string.random.id}"
  project_id = "fullstack-${var.env}-${random_string.random.id}"
}
