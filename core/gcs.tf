terraform {
  backend "gcs" {
    bucket = "terraform-tfstate-q87"
    prefix = "terraform/state"
  }
}
