include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../modules/redis/"
}

inputs = {
  node_type  = "cache.t3.micro"
  cluster_name = "review-redis"
  cache_zones = ["us-west-2c", "us-west-2d"]
  replication_group_id = "review-rep-group"
  env="prod"
}