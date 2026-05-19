resource "github_repository" "repo" {
  name         = var.name
  description  = var.description
  homepage_url = var.homepage_url
  topics       = var.topics

  auto_init          = true
  archive_on_destroy = true

  has_issues      = var.has_issues
  has_wiki        = var.has_wiki
  has_projects    = false
  has_discussions = var.has_discussions

  allow_merge_commit     = false
  allow_rebase_merge     = false
  allow_squash_merge     = true
  allow_update_branch    = true
  delete_branch_on_merge = true

  squash_merge_commit_title   = "PR_TITLE"
  squash_merge_commit_message = "PR_BODY"

  security_and_analysis {
    secret_scanning {
      status = "enabled"
    }
    secret_scanning_push_protection {
      status = "enabled"
    }
  }
}

resource "github_repository_vulnerability_alerts" "repo" {
  repository = github_repository.repo.name
  enabled    = true
}
