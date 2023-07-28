terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.9.0"
    }
  }
}

provider "aws"{
  profile = "my-dev-profile"
  region  = "us-east-1"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-05548f9cecf47b442"
  instance_type = "t2.micro"
  subnet_id  = "subnet-03fd4310fbec12a5b"
  tags = {
    Name = var.instance_name
  }
}
