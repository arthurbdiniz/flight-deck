resource "github_issue_label" "default" {
  for_each = { for label in var.labels : label.name => label }

  repository  = var.name
  name        = each.value.name
  color       = each.value.color
  description = each.value.description

  depends_on = [
    github_repository.repository
  ]
}