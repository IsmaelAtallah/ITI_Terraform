resource "aws_subnet" "public_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "${var.public_subnets1_cidr_block}"
  availability_zone = "eu-west-1a"
  tags = {
    Name = "${var.public_subnets1_name}"
  }
}

resource "aws_subnet" "public_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "${var.public_subnets2_cidr_block}"
  availability_zone = "eu-west-1b"
  tags = {
    Name = "${var.public_subnets2_name}"
  }
}

resource "aws_subnet" "private_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "${var.private_subnets1_cidr_block}"
  availability_zone = "eu-west-1a"
  tags = {
    Name = "${var.private_subnets1_name}"
  }
}


resource "aws_subnet" "private_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "${var.private_subnets2_cidr_block}"
  availability_zone = "eu-west-1a"
  tags = {
    Name = "${var.private_subnets2_name}"
  }
}

resource "aws_subnet" "private_3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "${var.private_subnets3_cidr_block}"
  availability_zone = "eu-west-1b"
  tags = {
    Name = "${var.private_subnets3_name}"
  }
}

resource "aws_subnet" "private_4" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "${var.private_subnets4_cidr_block}"
  availability_zone = "eu-west-1b"
  tags = {
    Name = "${var.private_subnets4_name}"
  }
}
