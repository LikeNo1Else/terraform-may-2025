resource "aws_instance" "web" {
  ami           = "ami-05ffe3c48a9991133"
  instance_type = "t2.micro"
  # availability_zone = "us-east-1c"
  subnet_id = "subnet-0d355a9acf56f88a6"
  
  tags = {
    Name = "class22-terraform"
  }
}