variable "node_type" {
    description = "Instance Class used (see AWS docs)"
    default = "cache.m4.micro"
}

variable "cluster_name" {
    description = "Name for the Elasticache Redis cluster to create"
}

variable "cache_zones" {
    description = "Cache zones in AWS for the redis cluster"
    type = list(string)
}

variable "replication_group_id" {
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