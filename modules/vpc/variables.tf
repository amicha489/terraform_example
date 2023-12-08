variable "name" {
    type = string
    description = "Name to be formatted differently for each resource"
}

variable "vpc_cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
    type = string
    default = "10.0.0.0/24"
}

variable "subnet_avail_zone" {
    type = string
    default = "us-west-2"
}

variable "sg_port" {
    type = number
    default = 8080
}

variable "env" {
    description = "must be stage or prod"
    type = string
    default = "stage"
    validation {
        condition = contains(["stage", "prod"], var.env)
        error_message = "Environment must be stage or prod"
    }
}