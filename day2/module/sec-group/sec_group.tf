resource "aws_security_group" "sec_g" {
  vpc_id      = "${var.sg_vpc_id}"
  
  ingress {
      description      = var.sg_ingress.description
      from_port        = var.sg_ingress.from_port
      to_port          = var.sg_ingress.to_port
      protocol         = var.sg_ingress.protocol 
      cidr_blocks      = var.sg_ingress.cidr_blocks 
  } 
  tags = {
    Name = "${var.tags}"
  }
}