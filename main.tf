#--------------------------------------------------------
# IaaC for simple Telegram Bot
#
# Creates:
#     - Basic EC2 Instance (pre installs docker and other needed tools)
#     - Security Group for that EC2 Instance
#
# Made by @corruptmane 06-June-2022
#--------------------------------------------------------

provider "aws" {
  region = "eu-central-1"
}

data "aws_ami" "latest_ubuntu_ami" {
  owners      = ["099720109477"]
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

}

#--------------------------------------------------------

resource "aws_security_group" "TG-bot-server-SG" {
  name_prefix = "SG-for-TG-bot-"

  dynamic "ingress" {
    for_each = ["8443", "3000"]
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "TG-bot-server" {
  ami           = data.aws_ami.latest_ubuntu_ami.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [
    aws_security_group.TG-bot-server-SG.id
  ]
}

#--------------------------------------------------------

output "latest_ubuntu_ami_id" {
  value = data.aws_ami.latest_ubuntu_ami.id
}

output "latest_ubuntu_ami_name" {
  value = data.aws_ami.latest_ubuntu_ami.name
}

output "instance_arn" {
  value = aws_instance.TG-bot-server.arn
}

#--------------------------------------------------------
