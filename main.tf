terraform {
  required_version = "1.5.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.18.1"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_instance" "curso_terraform" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  tags          = var.instance_tags
}