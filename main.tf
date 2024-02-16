resource "aws_elasticache_subnet_group" "example" {
  name       = var.subnet_group_name
  subnet_ids = var.subnet_ids
}
resource "aws_elasticache_cluster" "example" {
  cluster_id = var.name
  engine                = var.engine
  engine_version        =var.redis_version
  network_type          ="ipv4"
  node_type            = var.node_type
  num_cache_nodes      = 1
  parameter_group_name = var.parameter_group_name
  port                 =var.port
  subnet_group_name    = aws_elasticache_subnet_group.example.name
  availability_zone =var.availability_zone
  security_group_ids=var.vpc_security_group_ids
  snapshot_retention_limit=7
  auto_minor_version_upgrade=true
  apply_immediately = true
}
