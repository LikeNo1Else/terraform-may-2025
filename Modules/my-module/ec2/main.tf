resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = aws_subnet.main1.id
}

variable ami_id { default = "ami-0cbbe2c6a1bb2ad63" }
variable instance_type { default = "t2.micro" }
# variable subnet_id { default = }