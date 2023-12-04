variable "table_name" {
    description = "Name for the DynamoDB table to create"
    type = string
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

variable "ttl_enabled" {
    description = "Whether ttl is enabled or not"
    type = bool
    default = false
}

variable "read_capacity" {
    description = "read capacity for the DynamoDB table"
    type = number
}

variable "write_capacity" {
    description = "write capacity for the DynamoDB table"
    type = number
}