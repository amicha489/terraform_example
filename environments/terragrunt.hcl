generate "provider" {
    path      = "provider.tf"
    if_exists = "overwrite"
    contents = <<EOF
provider "aws" {
  region              = "us-west-2"
  version             = "~>5.0"
  allowed_account_ids = ["655352266715"]
}
EOF
}