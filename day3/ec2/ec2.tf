resource "aws_instance" "ec2" {
  count = var.create ? 1:0
  ami="${var.ec2_ami}"
  instance_type ="${var.ec2_instance_type}"
  subnet_id ="${var.ec2_subnets_id}"
  tags = {
    Name = "${var.ec2_instance_type}"
  }
}