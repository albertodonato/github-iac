tf := env("TF", "tofu")

# Run linting
lint:
    {{tf}} fmt -recursive -check
    tflint -f compact --recursive

# Run validation
validate:
    {{tf}} init
    {{tf}} validate

# Upgrade modules
upgrade:
    {{tf}} init --upgrade

# Remove repository from state
remove-repository name:
    #!/usr/bin/env bash
    set -euo pipefail

    tf="{{tf}}"
    name="{{name}}"

    for r in $("$tf" state list | grep -F "module.${name//-/_}"); do
      "$tf" state rm "$r";
    done
