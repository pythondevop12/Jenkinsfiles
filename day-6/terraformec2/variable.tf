variable "ami_val" {
    description = "use for the ami value"
}

variable "instance_type_val" {
    description = "use for instance type value"
  
}

variable "sg_val" {
  description = "use for security group value"
}

variable "subnet_id" {
  description = "used for the subnet"
  default = "subnet-0890f67a5b68c7c02"
}