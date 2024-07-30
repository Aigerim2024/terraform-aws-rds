module "rds" {
  source = "../"

  cluster_identifier      = "my-cluster"
  engine                  = "aurora"
  engine_version          = "5.6.10a"
  master_username         = var.master_username
  master_password         = var.master_password
  database_name           = "mydatabase"
  backup_retention_period = 7
  preferred_backup_window = "07:00-09:00"
  preferred_maintenance_window = "sun:05:00-sun:06:00"
  vpc_security_group_ids  = ["sg-0123456789abcdef0"]
  db_subnet_group_name    = "my-db-subnet-group"
  instance_count          = 2
  instance_class          = "db.r5.large"
  tags                    = {
    Name = "my-rds-cluster"
  }
}
