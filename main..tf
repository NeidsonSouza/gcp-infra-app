locals {
  project_id = "fullstack-neidson-${var.gcp_env}"
}

data "google_billing_account" "acct" {
  display_name = "My Billing Account"
  open         = true
}

resource "google_project" "create" {
  name            = local.project_id
  project_id      = local.project_id
  org_id          = "776289498881"
  billing_account = data.google_billing_account.acct.id
}

resource "google_project_service" "art" {
  project    = local.project_id
  service    = "artifactregistry.googleapis.com"
  depends_on = [google_project.create]
}
