include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../modules/vpc/"
}

inputs = {
  name = "account"
  sg_port = 80
  subnet_avail_zone = "us-west-2a"
  env = "prod"
}