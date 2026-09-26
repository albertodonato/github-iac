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
