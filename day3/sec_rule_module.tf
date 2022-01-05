module "rule1"{
    source ="./sec-group-rule"
    rule_type= "ingress"
    from_port=0
    to_port=65535
    protocol="tcp"
    cidr_blocks=["${module.module_vpc.vpc_cidr_block}"]
    security_group_id=module.test.sec_group_id
}