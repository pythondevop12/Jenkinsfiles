provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test" {
    ami = var.ami_val
    instance_type = var.instance_type_val
    vpc_security_group_ids = [var.sg_val]
    key_name = "binary"
    subnet_id = var.subnet_id

}
