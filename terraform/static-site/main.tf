terraform {
  required_version = "0.12.20"
}

provider "aws" {
  region  = var.region
  profile = var.profile
}

resource "aws_instance" "site" {
  ami                    = "ami-09e67e426f25ce0d7"
  instance_type          = "t2.micro"
  key_name               = "devops"
  vpc_security_group_ids = ["sg-062d14ec386b964ae", "sg-0661d0e80482dcd78"]
  tags = {
    Name  = var.name
    group = var.group
  }
}
