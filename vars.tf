variable REGION {
  default = "us-east-1"
}

variable ZONE1 {
  default = "us-east-1a"
}

variable AMIS {
  type = map
  default = {
    us-east-2 = "ami-09d3b3274b6c5d4aa"
    us-east-1 = "ami-0c4e4b4eb2e11d1d4"
  }
}

variable USER {
  default = "ec2-user"
}