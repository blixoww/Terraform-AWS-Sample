variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "bucket_name" {
  type    = string
  default = "bucket-terraform"
}

variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "eu-west-3"
}