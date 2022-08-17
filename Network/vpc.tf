#----------------------------------------------------#
#          Resource to create VPC
#----------------------------------------------------#
resource "aws_vpc" "elk_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_name
  }

}

#----------------------------------------------------#
#        Resource to create Internet gateway
#----------------------------------------------------#
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.elk_vpc.id

  tags = {
    Name = var.internet_gateway_name
  }
}
/*

#----------------------------------------------------#
#         Resource to create EIP for NAT GW
#----------------------------------------------------#
resource "aws_eip" "nat_eip" {
  vpc = true
}

#----------------------------------------------------#
#          Resource to create NAT GW 
#----------------------------------------------------#
resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name = var.nat_gateway_name
  }

}
*/

