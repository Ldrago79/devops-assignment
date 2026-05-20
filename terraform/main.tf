terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Setting the deployment region to Mumbai for optimal latency
provider "aws" {
  region = "ap-south-1" 
}

# Provisioning a basic, free-tier eligible web server
resource "aws_instance" "web_server" {
  ami           = "ami-013168dc3850c0d28" # Amazon Linux 2023 for ap-south-1
  instance_type = "t2.micro"              # Free-tier eligible

  tags = {
    Name        = "DevOps-Assignment-Server"
    Environment = "Production"
    ManagedBy   = "Terraform"
  }
}