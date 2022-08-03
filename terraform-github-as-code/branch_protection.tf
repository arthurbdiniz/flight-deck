resource "github_branch_protection" "default" {
  for_each = { for protection in var.branch_protections : protection.index => protection }

  repository_id = var.name

  pattern          = each.value.pattern
  enforce_admins   = each.value.enforce_admins
  allows_deletions = each.value.allows_deletions

  push_restrictions = []

  required_status_checks {
    strict   = each.value.required_status_checks.strict
    contexts = each.value.required_status_checks.contexts
  }

  required_pull_request_reviews {
    required_approving_review_count = each.value.pull_request_reviews.required_approving_review_count
    dismiss_stale_reviews           = each.value.pull_request_reviews.dismiss_stale_reviews
    restrict_dismissals             = each.value.pull_request_reviews.restrict_dismissals
    dismissal_restrictions          = []
  }

}