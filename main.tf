module "ads_b_snap" {
  source = "./repo"

  name        = "ads-b-snap"
  description = "Snap package for ADS-B, Mode S, and Mode 3A/3C demodulator and decoder"
  topics = [
    "ads-b",
    "snap",
  ]
}

module "bash_d" {
  source = "./repo"

  name        = "bash.d"
  description = "Bash configuration"
  topics = [
    "bash",
    "bashrc",
    "bashrc-configs",
    "shell",
  ]
  dependencies_labels = [
    "dependencies",
    "github_actions",
  ]

  has_issues = false
}

module "albertodonato_net" {
  source = "./repo"

  name         = "albertodonato.net"
  description  = "Personal homepage"
  homepage_url = "https://albertodonato.net"
  topics = [
    "blog",
    "pelican",
  ]
  dependencies_labels = [
    "dependencies",
    "github_actions",
    "pre_commit",
    "python:uv",
  ]

  has_issues  = false
  has_pages   = true
  pages_cname = "albertodonato.net"
}

module "emacs_d" {
  source = "./repo"

  name        = "emacs.d"
  description = "My own Emacs config"
  topics = [
    "emacs",
    "emacs-configuration",
    "emacs-lisp",
  ]

  has_issues = false
}

module "github_iac" {
  source = "./repo"

  name        = "github-iac"
  description = "IAC setup for GitHub repositories"
  topics = [
    "github",
    "iac",
    "iac-terraform",
  ]
  dependencies_labels = [
    "dependencies",
    "github_actions",
  ]

  has_issues = false
}

module "github_workflows" {
  source = "./repo"

  name        = "github-workflows"
  description = "Reusable GitHub workflows"
  topics = [
    "github",
    "workflows",
  ]
  dependencies_labels = [
    "dependencies",
    "github_actions",
  ]

  has_issues = false
}

module "h2static" {
  source = "./repo"

  name        = "h2static"
  description = "Tiny static web server with TLS and HTTP/2 support"
  topics = [
    "http-server",
    "http2",
    "https-server",
    "json-format",
    "serving-files",
    "static-server",
    "tls",
  ]
}

module "lxstats" {
  source = "./repo"

  name        = "lxstats"
  description = "Python library to access process and system stats from /proc and /sys on Linux"
  topics = [
    "linux",
    "monitoring",
    "proc",
    "python-library",
    "sys",
  ]
}

module "metapackages" {
  source = "./repo"

  name         = "metapackages"
  description  = "Repository with metapackages"
  homepage_url = "https://repo.albertodonato.net"
  topics = [
    "arch",
    "deb",
    "debian",
    "packaging",
  ]
  dependencies_labels = [
    "dependencies",
    "github_actions",
    "python:uv",
  ]

  has_issues  = false
  has_pages   = true
  pages_cname = "repo.albertodonato.net"
}

module "nix_packages" {
  source = "./repo"

  name        = "nix-packages"
  description = "Personal Nix packages repository"
  topics = [
    "nix",
    "nixos",
    "packaging",
  ]
  dependencies_labels = [
    "dependencies",
    "github_actions",
  ]

  has_issues = false
}

module "process_stats_exporter" {
  source = "./repo"

  name        = "process-stats-exporter"
  description = "Export Prometheus metrics about processes and tasks"
  topics = [
    "monitoring",
    "process",
    "prometheus",
    "prometheus-exporter",
  ]
}

module "prometheus_aioexporter" {
  source = "./repo"

  name        = "prometheus-aioexporter"
  description = "Asyncio library for creating Prometheus exporters"
  topics = [
    "asyncio",
    "library",
    "metrics",
    "prometheus",
    "prometheus-exporter",
    "python-library",
  ]
  dependencies_labels = [
    "dependencies",
    "github_actions",
    "pre_commit",
  ]
  action_environments = {
    pypi = "*.*.*"
  }
}

module "python_skeleton" {
  source = "./repo"

  name        = "python-skeleton"
  description = "Helper script to setup Python projects"
  topics      = ["python"]
  dependencies_labels = [
    "dependencies",
    "github_actions",
    "pre_commit",
    "python:uv",
  ]

  has_issues = false
}

module "query_exporter" {
  source = "./repo"

  name        = "query-exporter"
  description = "Export Prometheus metrics from SQL queries"
  topics = [
    "database",
    "metrics",
    "metrics-exporter",
    "prometheus",
    "prometheus-exporter",
    "query",
    "sql",
  ]
  dependencies_labels = [
    "dependencies",
    "github_actions",
    "pre_commit",
    "python:uv",
  ]
  action_variables = {
    DOCKERHUB_USERNAME = "adonato"
  }
  action_environments = {
    pypi = "*.*.*"
  }

  has_discussions = true
}

module "quickrepo" {
  source = "./repo"

  name        = "quickrepo"
  description = "Script to build a Debian repository from a set of .deb or .changes files"
  topics = [
    "apt",
    "apt-get",
    "deb",
    "debian",
    "debian-packaging",
    "repository",
  ]
}

module "rtlsdr_snap" {
  source = "./repo"

  name         = "rtlsdr-snap"
  description  = "Snap package for RTL-SDR tools"
  homepage_url = "https://osmocom.org/projects/rtl-sdr"
  topics = [
    "radioham",
    "rtl-sdr",
    "sdr",
    "snap",
  ]
}

module "snap_helpers" {
  source = "./repo"

  name        = "snap-helpers"
  description = "Interact with the Snap system within a Snap"
  topics = [
    "python-library",
    "snap",
    "snapcraft",
    "snappy",
  ]
}

module "sonarr_snap" {
  source = "./repo"

  name         = "sonarr-snap"
  description  = "Snap for the Sonarr smart PVR"
  homepage_url = "https://sonarr.tv"
  topics = [
    "snap",
    "sonarr",
    "sonarr-pvr",
  ]
}

module "shell_scripts" {
  source = "./repo"

  name        = "shell-scripts"
  description = "Collection of shell scripts"
  topics = [
    "shell",
    "shell-scripts",
  ]
}

module "sshoot" {
  source = "./repo"

  name        = "sshoot"
  description = "Manage sshuttle VPN sessions"
  topics = [
    "ssh",
    "sshuttle",
    "vpn",
  ]
}

module "zsh_d" {
  source = "./repo"

  name        = "zsh.d"
  description = "Zsh configuration"
  topics = [
    "shell",
    "zsh",
    "zsh-configs",
    "zshrc",
  ]

  has_issues = false
}
