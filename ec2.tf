resource "aws_instance" "ec2" {
  ami                  = "ami-0c02fb55956c7d316"
  instance_type        = var.instance_type
  subnet_id            = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.security_group.id]
  key_name             = aws_key_pair.deployer_key.key_name
  iam_instance_profile = aws_iam_instance_profile.ec2_instance_profile.name
  tags = {
    Name = "MyEC2Instance"
  }
}
