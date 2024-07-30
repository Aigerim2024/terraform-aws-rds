output "cluster_endpoint" {
  description = "The endpoint of the RDS cluster"
  value       = aws_rds_cluster.this.endpoint
}

output "cluster_reader_endpoint" {
  description = "The reader endpoint of the RDS cluster"
  value       = aws_rds_cluster.this.reader_endpoint
}

output "instance_endpoints" {
  description = "A list of all instance endpoints"
  value       = aws_rds_cluster_instance.this[*].endpoint
}
