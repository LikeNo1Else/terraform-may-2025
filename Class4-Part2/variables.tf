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
  description = "Enter info"
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
        cidr = string
        az = string
        name = string
    }))
    default = [ 
     {
       cidr = ""
       az = ""
       name = ""
   },
     {
       cidr = ""
       az = ""
       name = ""
  },
    {
       cidr = ""
       az = ""
       name = ""
  }  
  ]
}

