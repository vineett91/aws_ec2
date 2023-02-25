provider "aws" {
    access_key = "AKIAVI7OX3YFC35MSP67"
    secret_key = "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"
    region = "us-east-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-0a8b4cd432b1c3063"
  instance_type = "t2.micro"
  key_name      = "awsvmkey"
    
  tags = {
    Name = "aws_demo"
  }
}
