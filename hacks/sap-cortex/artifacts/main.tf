terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.27.0"
    }
  }
}

locals {
  build_default_sa = "${data.google_project.project.number}@cloudbuild.gserviceaccount.com"
}

provider "google" {
  project = var.gcp_project_id
}

data "google_project" "project" {}


module "cortex-deployment" {
    source = "./cortex"

    cortex_source_project = data.google_project.project.id
    cortex_target_project = data.google_project.project.id
}