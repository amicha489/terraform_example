include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../modules/dynamodb/"
}

inputs = {
  table_name = "review-db"
  env = "prod"
  read_capacity = 20
  write_capacity = 20
}