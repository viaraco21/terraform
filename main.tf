terraform {
required_providers {
aws = {
source = "hashicorp/aws"
version = "~> 4.16"
}
}

required_version = ">= 1.2.0"
}

provider "aws" {
region = "us-west-2"
profile = "default"
}

resource "aws_security_group" "allow_http" {
name = "raco_allow_http_8080"
description = "Allow HTTP inbound traffic on port 8080"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  // Isso significa todos os protocolos
    cidr_blocks = ["0.0.0.0/0"]  // Permite tráfego de entrada de qualquer lugar
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  // Permite todos os tipos de tráfego de saída
    cidr_blocks = ["0.0.0.0/0"]  // Permite tráfego de saída para qualquer lugar
  }
}

resource "aws_instance" "app_server" {
ami = "ami-03d5c68bab01f3496"
instance_type = "t2.micro"
key_name = "raco14-oregon"
security_groups = [aws_security_group.allow_http.name]
user_data = <<-EOF
            #!/bin/bash
            cd /home/ubuntu
            echo "<h1>SRE | Analista de DevOps | CI/CD </h1>" > index.html
            nohup busybox httpd -f -p 8080 &
            EOF
tags = {
Name = "RACO-INSTANCIA"
}
}
