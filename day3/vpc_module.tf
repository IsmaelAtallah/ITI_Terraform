module "module_vpc"{
    source ="./vpc"
    tags ="module_vpc"
    vpc_cidr_block="10.0.0.0/16"
}