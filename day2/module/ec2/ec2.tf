resource "aws_instance" "ec2" {
  ami="${var.ec2_ami}"
  instance_type ="${var.ec2_instance_type}"
  subnet_id ="${var.ec2_subnets_id}"
  vpc_security_group_ids="${var.ec2_security_groups_id}"
  tags = {
    Name = "${var.ec2_instance_type}"
  }
}