# see https://www.terraform.io/docs/providers/google/d/organization.html for more information
data "google_organization" "organization" {
  domain = var.project_domain
}

# see https://www.terraform.io/docs/providers/google/d/client_config.html for more information
data "google_client_config" "current" {}

# Retrieve all Projects for the current Region and Filter
# see https://www.terraform.io/docs/providers/google/d/projects.html for more information
data "google_projects" "projects" {
  filter = ""
}

# Retrieve all available Cloud Composer versions for the current region
# see https://www.terraform.io/docs/providers/google/d/composer_image_versions.html for more information
data "google_composer_image_versions" "versions" {}
