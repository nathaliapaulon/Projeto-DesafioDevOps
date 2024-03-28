provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "app_instance" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  key_name      = "appdevops1"

  tags = {
    Name = "AppDevOps"
  }
}

output "instance_public_dns" {
  value = aws_instance.app_instance.public_dns
}