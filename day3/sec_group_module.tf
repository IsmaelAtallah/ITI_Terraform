module "test" {
    source ="./sec-group/"
    sg_vpc_id= module.module_vpc.vpc_id
    tags = "test_sg"
}