resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "publicRouteTable"
  }
}

resource "aws_route_table" "nat_route_table" {
  vpc_id = aws_vpc.main.id
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ngw.id
  }
  tags = {
    Name = "NGW-Route-Table"
  }
}

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "privateRouteTable"
  }
}

