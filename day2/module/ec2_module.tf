module "module_test"{
    source ="./ec2"
    ec2_ami="ami-04dd4500af104442f"
    ec2_instance_type ="t2.micro"
    ec2_Name="module_test"
    ec2_subnets_id=module.public1.subnet_id
    ec2_security_groups_id=module.test.sec_group_id
    
}