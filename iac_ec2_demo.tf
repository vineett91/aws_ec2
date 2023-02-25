#provider.tf

provider "aws"{
region = "us-east-1"
access_key = "AKIAVI7OX3YFC35MSP67"
secret_key = "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"
}

 #ec2.tf

resource "aws_instance" "demo_ec2" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "demo for jenkins terraform"
  }
}
