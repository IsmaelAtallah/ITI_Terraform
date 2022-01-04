resource "aws_route_table_association" "a_public1" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "a_public2" {
  subnet_id      = aws_subnet.public_2.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "a_private1" {
  subnet_id      = aws_subnet.private_1.id
  route_table_id = aws_route_table.nat_route_table.id
}

resource "aws_route_table_association" "a_private3" {
  subnet_id      = aws_subnet.private_3.id
  route_table_id = aws_route_table.nat_route_table.id
}

resource "aws_route_table_association" "a_private2" {
  subnet_id      = aws_subnet.private_2.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "a_private4" {
  subnet_id      = aws_subnet.private_4.id
  route_table_id = aws_route_table.private_route_table.id
}