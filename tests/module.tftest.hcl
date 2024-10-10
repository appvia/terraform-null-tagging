
run "basic" {
  command = plan

  variables {
    cost_center = "12345"
    environment = "Production"
    owner       = "Support"
    product     = "Test"
    git_repo    = "https://github.com/appvia/terraform-null-tagging"
  }
}
