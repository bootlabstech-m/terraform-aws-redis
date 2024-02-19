resource "aws_elasticache_subnet_group" "example" {
  name       = var.test_subnet_name
  subnet_ids = var.subnet_ids
}
resource "aws_elasticache_replication_group" "example" {
  replication_group_id = var.name
  description          = "example with authentication"
  node_type            = var.node_type
  engine               = var.engine
  num_cache_clusters   =var.num_cache_clusters
  port                 =var.port
  subnet_group_name    = aws_elasticache_subnet_group.example.name
  security_group_ids   =var.security_group_ids
  parameter_group_name = var.parameter_group_name
  engine_version       =var.engine_version
  transit_encryption_enabled =var.transit_encryption_enabled
  snapshot_retention_limit=var.snapshot_retention_limit
  auto_minor_version_upgrade=true
  apply_immediately = true
}