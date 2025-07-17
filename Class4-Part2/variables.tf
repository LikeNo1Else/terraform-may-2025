variable "region" {
    default = "us-east-1"
    type = string
    description = "Provide region for your aws host"
}

variable key_name{
    default = "my-class4-key"
    type = string
    description = "Provide name for your key in selected region"
}

variable port{
    default = [22, 80]
    type = list(number)
    description = "Provide port"
}

variable ec2_web {
  default = {
      ami_id = "ami-05ffe3c48a9991133"
      instance_type = "t2.micro"
      subnet_id = "subnet-0d355a9acf56f88a6"
  }
  type = map(string)
  description = "Enter info"
  
}
