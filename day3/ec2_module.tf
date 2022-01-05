module "module_test"{
    count =0
    source ="./ec2"
    ec2_ami="ami-04dd4500af104442f"
    ec2_instance_type ="t2.micro"
    ec2_Name="module_test"
    ec2_subnets_id=module.public1.subnet_id

}