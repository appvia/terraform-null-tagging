
output "tags" {
  description = "A map of all the tags_inverted generated for resources."
  value       = local.tags
}

output "application" {
  description = "The tag to use for the application."
  value       = local.tags_inverted[var.application]
}

output "application_tier" {
  description = "The tag to use for the application tier."
  value       = local.tags_inverted[var.application_tier]
}

output "cost_center" {
  description = "The tag to use for the cost center."
  value       = local.tags_inverted[var.cost_center]
}

output "data_classification" {
  description = "The tag to use for the data classification."
  value       = local.tags_inverted[var.data_classification]
}

output "environment" {
  description = "The tag to use for the environment."
  value       = local.tags_inverted[var.environment]
}

output "git_repo" {
  description = "The tag to use for the git repository."
  value       = local.tags_inverted[var.git_repo]
}

output "owner" {
  description = "The tag to use for the owner."
  value       = local.tags_inverted[var.owner]
}

output "product" {
  description = "The tag to use for the product."
  value       = local.tags_inverted[var.product]
}

output "project" {
  description = "The tag to use for the project."
  value       = local.tags_inverted[var.project]
}

output "provisioner" {
  description = "The tag to use for the provisioner."
  value       = local.tags_inverted[var.provisioner]
}

output "security_classification" {
  description = "The tag to use for the security classification."
  value       = local.tags_inverted[var.security_classification]
}

output "service" {
  description = "The tag to use for the service."
  value       = local.tags_inverted[var.service]
}

output "team" {
  description = "The tag to use for the team."
  value       = local.tags_inverted[var.team]
}
