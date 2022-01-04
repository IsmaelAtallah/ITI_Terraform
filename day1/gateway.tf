resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "internet-gateway"
  }
}

resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.public_1.id

  tags = {
    Name = "NatGateWay"
  }
}

resource "aws_eip" "lb" {
  vpc      = true
}
