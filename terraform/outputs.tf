output "bucket_name" {
  description = "Name of the test bucket we created"
  value       = aws_s3_bucket.test_bucket.id
}

output "aws_region" {
  description = "AWS region we're using"
  value       = var.aws_region
}