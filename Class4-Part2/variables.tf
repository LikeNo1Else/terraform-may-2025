variable "region" {
    type = string
    description = "Provide region for your aws host"
}
variable key_name{
    type = string
    description = "Provide name for your key in selected region"
}
variable port{
    type = list(number)
    description = "Provide port"
}
variable ec2_web {
  type = map(string)
}


variable vpc {
    type = object({
      cidr = string
      name = string    
    })
    default = {
      cidr = ""
      name = ""
    }
}

variable subnet {
    type = list(object({
        cidr = number
        az = string
        name = string
    }))
    default = [{
       az = ""
       cidr = ""
       name = ""
  },
  {
       az = ""
       cidr = ""
       name = ""
  },
  {
       az = ""
       cidr = ""
       name = ""
  }
  ]
}