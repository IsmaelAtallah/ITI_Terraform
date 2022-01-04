variable "sg_vpc_id"{
    type =string
}
variable "sg_ingress"{
    type =object({
        description      = string
        from_port        = number
        to_port          = number
        protocol         = string
        cidr_blocks      = list(string)
  })
}

variable "tags" {
    type = string
}