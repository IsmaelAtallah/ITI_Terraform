module "test" {
    source ="./sec-group/"
    sg_vpc_id= module.module_vpc.vpc_id
    sg_ingress ={
        description      = "TLS from VPC"
        from_port        = 443
        to_port          = 443
        protocol         = "tcp"
        cidr_blocks      = [module.module_vpc.vpc_cidr_block]
    }
    tags = "test_sg"
}