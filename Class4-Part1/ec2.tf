resource "aws_instance" "web" {
  ami           = var.ec2_web["ami_id"]
  instance_type = var.ec2_web["instance_type"]
  subnet_id = var.ec2_web["subnet_id"]
  tags = local.common_tags
}
