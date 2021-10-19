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
  vpc_security_group_ids = ["sg-0994b80e04f588299","sg-06ba7646d94d35d65"]
  tags = {
    Name  = var.name
    group = var.group
  }
}
