#provider.tf

provider "aws"{
region = "us-east-1"
access_key = "AKIAVI7OX3YFC35MSP67"
secret_key = "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"
}

resource "aws_instance" "ec2_instance" {
    ami = "${var.ami_id}"
    count = "${var.number_of_instances}"
    subnet_id = "${var.subnet_id}"
    instance_type = "${var.instance_type}"
    key_name = "${var.ami_key_pair_name}"
} 


variable "instance_name" {
        description = "Name of the instance to be created"
        default = "demo1"
}

variable "instance_type" {
        default = "t2.micro"
}

variable "subnet_id" {
        description = "The VPC subnet the instance(s) will be created in"
        default = "subnet-03a2537f20e9b92b6"
}

variable "ami_id" {
        description = "The AMI to use"
        default = "ami-0a8b4cd432b1c3063"
}

variable "number_of_instances" {
        description = "number of instances to be created"
        default = 1
}


variable "ami_key_pair_name" {
        default = "awsvmkey"
}
