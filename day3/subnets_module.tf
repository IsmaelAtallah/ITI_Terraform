module "public1"{
    source="./subnets"
    vpc_id = module.module_vpc.vpc_id
    tags="public1"
    subnets_cidr_block=["10.0.1.0/24","10.0.2.0/24"]
    subnets_az="eu-west-1a"
}