include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../modules/dynamodb/"
}

inputs = {
  table_name = "recommender-db"
  env = "prod"
  read_capacity = 15
  write_capacity = 15
}