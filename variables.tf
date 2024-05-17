
variable "application" {
  description = "The name of the application to provision resources and inject into all resource tags"
  type        = string
  default     = null
}

variable "application_tier" {
  description = "The tier of the application to provision resources and inject into all resource tags"
  type        = string
  default     = null
}

variable "cost_center" {
  description = "The cost center of the product, and injected into all resource tags"
  type        = string
  default     = null
}

variable "data_classification" {
  description = "The data classification of the product, and injected into all resource tags"
  type        = string
  default     = null
}

variable "environment" {
  description = "The environment we are deploying the resources"
  type        = string

  validation {
    condition     = length(var.environment) > 0
    error_message = "The environment must be greater than 0"
  }

  validation {
    condition     = length(var.environment) <= 64
    error_message = "The environment must be less than or equal to 64"
  }

  validation {
    condition     = can(regex("^[a-zA-Z0-9-_]+$", var.environment))
    error_message = "The environment must be alphanumeric and contain only hyphens and underscores"
  }
}

variable "git_repo" {
  description = "The git repository to store the terraform code"
  type        = string

  validation {
    condition     = length(var.git_repo) > 0
    error_message = "The git repository must be greater than 0"
  }

  validation {
    condition     = length(var.git_repo) <= 256
    error_message = "The git repository must be less than or equal to 64"
  }
}

variable "owner" {
  description = "The owner of the product, and injected into all resource tags"
  type        = string

  validation {
    condition     = length(var.owner) > 0
    error_message = "The owner must be greater than 0"
  }

  validation {
    condition     = length(var.owner) <= 64
    error_message = "The owner must be less than or equal to 64"
  }

  validation {
    condition     = can(regex("^[a-zA-Z0-9-_]+$", var.owner))
    error_message = "The owner must be alphanumeric and contain only hyphens and underscores"
  }
}

variable "provisioner" {
  description = "The provisioner of the product, and injected into all resource tags"
  type        = string
  default     = "Terraform"

  validation {
    condition     = length(var.provisioner) > 0
    error_message = "The provisioner must be greater than 0"
  }

  validation {
    condition     = length(var.provisioner) <= 64
    error_message = "The provisioner must be less than or equal to 64"
  }

  validation {
    condition     = can(regex("^(Cloudformation|Terraform)$", var.provisioner))
    error_message = "The provisioner must be Cloudformation or Terraform"
  }
}

variable "product" {
  description = "The name of the product to provision resources and inject into all resource tags"
  type        = string

  validation {
    condition     = length(var.product) > 0
    error_message = "The product name must be greater than 0"
  }

  validation {
    condition     = length(var.product) <= 64
    error_message = "The product name must be less than or equal to 64"
  }

  validation {
    condition     = can(regex("^[a-zA-Z0-9-_]+$", var.product))
    error_message = "The product name must be alphanumeric and contain only hyphens and underscores"
  }
}

variable "project" {
  description = "The name of the project to provision resources and inject into all resource tags"
  type        = string
  default     = null
}

variable "security_classification" {
  description = "The security classification of the product, and injected into all resource tags"
  type        = string
  default     = null
}

variable "service" {
  description = "The name of the service to provision resources and inject into all resource tags"
  type        = string
  default     = null
}

variable "team" {
  description = "The team responsible for the product, and injected into all resource tags"
  type        = string
  default     = null
}

