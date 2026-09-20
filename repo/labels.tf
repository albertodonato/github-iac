locals {
  default_issue_labels = [
    {
      name        = "bug"
      description = "Something isn't working"
      color       = "d73a4a"
    },
    {
      name        = "documentation"
      description = "Improvements or additions to documentation"
      color       = "0075ca"
    },
    {
      name        = "duplicate"
      description = "This issue or pull request already exists"
      color       = "cfd3d7"
    },
    {
      name        = "enhancement"
      description = "New feature or request"
      color       = "a2eeef"
    },
    {
      name        = "good first issue"
      description = "Good for newcomers"
      color       = "7057ff"
    },
    {
      name        = "help wanted"
      description = "Extra attention is needed"
      color       = "008672"
    },
    {
      name        = "invalid"
      description = "This doesn't seem right"
      color       = "e4e669"
    },
    {
      name        = "question"
      description = "Further information is requested"
      color       = "d876e3"
    },
    {
      name        = "wontfix"
      description = "This will not be worked on"
      color       = "ffffff"
    },
  ]

  dependencies_labels = {
    "dependencies" = {
      description = "Pull requests that update a dependency file"
      color       = "0366d6"
    }
    "github_actions" = {
      description = "Pull requests that update GitHub Actions code"
      color       = "000000"
    }
    "go" = {
      description = "Pull requests that update go code"
      color       = "16e2e2"
    }
    "nix" = {
      description = "Pull requests that update nix code"
      color       = "3E6399"
    }
    "pre_commit" = {
      description = "Pull requests that update pre_commit code"
      color       = "000000"
    },
    "python" = {
      description = "Pull requests that update python code"
      color       = "2b67c6"
    }
    "python:uv" = {
      description = "Pull requests that update python:uv code"
      color       = "2b67c6"
    },
  }
}

resource "github_issue_labels" "repo" {
  repository = github_repository.repo.name

  dynamic "label" {
    for_each = concat(
      local.default_issue_labels,
      [
        for name in var.dependencies_labels :
        merge(local.dependencies_labels[name], { name = name })
      ],
      var.extra_issue_labels,
    )

    content {
      name        = label.value.name
      description = label.value.description
      color       = label.value.color
    }
  }
}
