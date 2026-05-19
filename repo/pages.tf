resource "github_repository_pages" "pages" {
  count      = var.has_pages ? 1 : 0
  repository = github_repository.repo.name
  build_type = "workflow"
  cname      = var.pages_cname
}
