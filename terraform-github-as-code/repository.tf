resource "github_repository" "repository" {
  name                   = var.name
  description            = var.description
  visibility             = var.visibility
  delete_branch_on_merge = var.delete_branch_on_merge # default to false
  has_downloads          = var.has_downloads
  has_issues             = var.has_issues
  has_projects           = var.has_projects
  has_wiki               = var.has_wiki
  is_template            = var.is_template
  topics                 = var.topics
  archived               = var.archived
  homepage_url           = var.homepage_url
  vulnerability_alerts   = var.vulnerability_alerts

  # dynamic "pages" {
  #   for_each = var.pages.enabled ? ["", ] : []

  #   content {
  #     cname = each.value.pages.cname
  #     source {
  #       branch = each.value.pages.branch
  #       path   = each.value.pages.path
  #     }
  #   }
  # }

  # dynamic "template" {
  #   for_each = each.value.template.enabled ? ["", ] : []

  #   content {
  #     owner      = local.owner
  #     repository = each.value.template.repository
  #   }
  # }

  lifecycle {
    ignore_changes = [
      branches
    ]
    # prevent_destroy = local.prevent_destroy
  }
}