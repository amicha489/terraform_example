resource "aws_elasticache_replication_group" "example" {
  automatic_failover_enabled  = true
  preferred_cache_cluster_azs = var.cache_zones
  replication_group_id        = var.replication_group_id
  description                 = "Elasticache Replication Group for redis cluster ${var.cluster_name}"
  node_type                   = var.node_type
  num_cache_clusters          = local.num_cache_clusters
  parameter_group_name        = local.parameter_group_name
  port                        = local.port

  lifecycle {
    ignore_changes = [num_cache_clusters]
  }
}

resource "aws_elasticache_cluster" "example" {
  cluster_id           = format("%s-%s",var.cluster_name,var.env)
  engine               = "redis"
  node_type            = var.node_type
  num_cache_nodes      = local.num_cache_nodes
  parameter_group_name = local.parameter_group_name
  port                 = local.port
}