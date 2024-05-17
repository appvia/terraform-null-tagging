
locals {
  tags = merge({},
    var.application != "" ? { "Application" = var.application } : {},
    var.application_tier != "" ? { "Tier" = var.application_tier } : {},
    var.cost_center != "" ? { "CostCenter" = var.cost_center } : {},
    var.data_classification != "" ? { "DataClassification" = var.data_classification } : {},
    var.environment != "" ? { "Enviroment" = var.environment } : {},
    var.git_repo != "" ? { "GitRepo" = var.git_repo } : {},
    var.owner != "" ? { "Owner" = var.owner } : {},
    var.product != "" ? { "Product" = var.product } : {},
    var.project != "" ? { "Project" = var.project } : {},
    var.provisioner != "" ? { "Provisioner" = var.provisioner } : {},
    var.security_classification != "" ? { "SecurityClassification" = var.security_classification } : {},
    var.service != "" ? { "Service" = var.service } : {},
    var.team != "" ? { "Team" = var.team } : {},
  )
}
