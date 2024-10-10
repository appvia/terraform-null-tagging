![Github Actions](../../actions/workflows/terraform.yml/badge.svg)

# Terraform Null Tagging Module

## Description

The purpose of this module is for internal use, and use to ensure consistent tagging across all resources. This module is used to inject tags into all resources created by Terraform. The tags are generated based on the input variables provided to the module.

## Usage

```hcl
module "example" {
  source  = "appvia/tagging/null"
  version = "0.0.1"

  environment = "dev"
  git_repo    = "https://github.com/appvia/terraform-null-tagging"
  owner       = "appvia"
  product     = "terraform-null-tagging"
}
```

## Update Documentation

The `terraform-docs` utility is used to generate this README. Follow the below steps to update:

1. Make changes to the `.terraform-docs.yml` file
2. Fetch the `terraform-docs` binary (https://terraform-docs.io/user-guide/installation/)
3. Run `terraform-docs markdown table --output-file ${PWD}/README.md --output-mode inject .`

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.7 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | The environment we are deploying the resources | `string` | n/a | yes |
| <a name="input_git_repo"></a> [git\_repo](#input\_git\_repo) | The git repository to store the terraform code | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | The owner of the product, and injected into all resource tags | `string` | n/a | yes |
| <a name="input_product"></a> [product](#input\_product) | The name of the product to provision resources and inject into all resource tags | `string` | n/a | yes |
| <a name="input_application"></a> [application](#input\_application) | The name of the application to provision resources and inject into all resource tags | `string` | `null` | no |
| <a name="input_application_tier"></a> [application\_tier](#input\_application\_tier) | The tier of the application to provision resources and inject into all resource tags | `string` | `null` | no |
| <a name="input_cost_center"></a> [cost\_center](#input\_cost\_center) | The cost center of the product, and injected into all resource tags | `string` | `null` | no |
| <a name="input_data_classification"></a> [data\_classification](#input\_data\_classification) | The data classification of the product, and injected into all resource tags | `string` | `null` | no |
| <a name="input_project"></a> [project](#input\_project) | The name of the project to provision resources and inject into all resource tags | `string` | `null` | no |
| <a name="input_provisioner"></a> [provisioner](#input\_provisioner) | The provisioner of the product, and injected into all resource tags | `string` | `"Terraform"` | no |
| <a name="input_security_classification"></a> [security\_classification](#input\_security\_classification) | The security classification of the product, and injected into all resource tags | `string` | `null` | no |
| <a name="input_service"></a> [service](#input\_service) | The name of the service to provision resources and inject into all resource tags | `string` | `null` | no |
| <a name="input_team"></a> [team](#input\_team) | The team responsible for the product, and injected into all resource tags | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tags"></a> [tags](#output\_tags) | A map of all the tags\_inverted generated for resources. |
<!-- END_TF_DOCS -->
