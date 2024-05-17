#####################################################################################
# Terraform module examples are meant to show an _example_ on how to use a module
# per use-case. The code below should not be copied directly but referenced in order
# to build your own root module that invokes this module
#####################################################################################

module "tagging" {
  source = "../../"

  environment = "dev"
  owner       = "engineering"
  product     = "terraform"
  git_repo    = "https://github.com/appvia/terraform-aws-tagging.git"
}
