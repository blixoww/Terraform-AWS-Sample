resource "aws_key_pair" "deployer_key" {
  key_name   = "deployer_key"
  public_key = file(var.public_key_path)
}

variable "public_key_path" {
  description = "Path to the public key file for SSH access"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}


