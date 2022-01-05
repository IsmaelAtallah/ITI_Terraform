resource "aws_security_group" "sec_g" {
  vpc_id      = "${var.sg_vpc_id}"
  tags = {
    Name = "${var.tags}"
  }
}