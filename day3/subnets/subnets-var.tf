variable "vpc_id" {
    type = string
}

variable "tags" {
    type = string
}

variable "subnets_cidr_block" {
    type =list 
}

variable "subnets_az" {
    type = string
}
