output "organization_name" {
  description = "`name` value of the GCP Organization"
  value                          = data.google_organization.organization.name
}

output "organization_id" {
  description                    = "`id` value of the GCP Organization"
  value = data.google_organization.organization.id
}

output "organization_create_time" {
  description = "`create_time` value of the GCP Organization"
  value       = data.google_organization.organization.create_time
}

output "client_config_project" {
  description = "`project` value of the GCP Client"
  value       = data.google_client_config.current.project
}
