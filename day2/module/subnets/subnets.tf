resource "aws_subnet" "subnets" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "${var.subnets_cidr_block}"
  availability_zone = "${var.subnets_az}"
  tags = {
    Name = "${var.tags}"
  }
}
