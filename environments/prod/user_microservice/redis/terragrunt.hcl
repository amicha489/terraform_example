include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../modules/redis/"
}

inputs = {
  node_type  = "cache.t3.micro"
  cluster_name = "user"
  cache_zones = ["us-west-2a", "us-west-2b"]
  replication_group_id = "user-rep-group"
  env="prod"
}