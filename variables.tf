variable "cluster_identifier" {
  description = "The cluster identifier"
  type        = string
}

variable "engine" {
  description = "The name of the database engine to be used"
  type        = string
}

variable "engine_version" {
  description = "The version number of the database engine to use"
  type        = string
}

variable "master_username" {
  description = "The master username for the database"
  type        = string
}

variable "master_password" {
  description = "The master password for the database"
  type        = string
  sensitive   = true
}

variable "database_name" {
  description = "The name of the database to create when the DB cluster is created"
  type        = string
}

variable "backup_retention_period" {
  description = "The number of days to retain backups"
  type        = number
  default     = 7
}

variable "preferred_backup_window" {
  description = "The daily time range during which automated backups are created"
  type        = string
  default     = "07:00-09:00"
}

variable "preferred_maintenance_window" {
  description = "The weekly time range during which system maintenance can occur"
  type        = string
  default     = "sun:05:00-sun:06:00"
}

variable "vpc_security_group_ids" {
  description = "A list of VPC security groups to associate with the DB cluster"
  type        = list(string)
}

variable "db_subnet_group_name" {
  description = "A DB subnet group to associate with this DB instance"
  type        = string
}

variable "instance_count" {
  description = "Number of DB instances to create"
  type        = number
  default     = 2
}

variable "instance_class" {
  description = "The instance class to be used"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
