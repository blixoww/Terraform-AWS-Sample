output "alb_dns_name" {
  description = "DNS du Load Balancer"
  value       = aws_lb.app_lb.dns_name
}

output "instance_public_ip" {
  value = aws_instance.ec2.public_ip
}

output "s3_bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}