resource "aws_subnet" "subnets" {
  count = length(var.subnets_cidr_block)
  vpc_id     = "${var.vpc_id}"
  cidr_block = "${var.subnets_cidr_block[count.index]}"
  availability_zone = "${var.subnets_az}"
  tags = {
    Name = lower("${var.tags}_${count.index}")
  }
}
