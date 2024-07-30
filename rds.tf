resource "aws_rds_cluster" "this" {
  cluster_identifier      = var.cluster_identifier
  engine                  = var.engine
  engine_version          = var.engine_version
  master_username         = var.master_username
  master_password         = var.master_password
  database_name           = var.database_name
  backup_retention_period = var.backup_retention_period
  preferred_backup_window = var.preferred_backup_window
  preferred_maintenance_window = var.preferred_maintenance_window
  vpc_security_group_ids  = var.vpc_security_group_ids
  db_subnet_group_name    = var.db_subnet_group_name

  tags = var.tags
}

resource "aws_rds_cluster_instance" "this" {
  count                   = var.instance_count
  identifier              = "${var.cluster_identifier}-${count.index}"
  cluster_identifier      = aws_rds_cluster.this.id
  instance_class          = var.instance_class
  engine                  = var.engine
  engine_version          = var.engine_version
  db_subnet_group_name    = var.db_subnet_group_name

  tags = var.tags
}
