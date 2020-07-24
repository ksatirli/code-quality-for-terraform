provider "google" {
  # credentials are inferred from the environment through `gcloud auth application-default login`
  # credentials = file("google_cloud_credentials.json")

  # optional, may also be configured via `gcloud config set project <project ID>`
  project = var.project_id

  # see https://cloud.google.com/compute/docs/regions-zones for more information
  region = var.project_region
}
