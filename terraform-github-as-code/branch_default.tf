resource "github_branch_default" "default" {
  count = var.empty_repository ? 0 : 1

  repository = var.name
  branch     = var.default_branch
}