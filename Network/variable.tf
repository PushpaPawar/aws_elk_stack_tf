
variable "vpc_cidr" {
  type        = string
  description = " Variable to declare VPC CIDR range"
  default     = "192.168.0.0/16"
}

variable "vpc_name" {
  description = "Name of VPC"
  type        = string
  default     = "ELK_VPC"

  
}

#-------------------------------------------------------------------------#

variable "public_subnet_cidr" {
  description = "This is the CIDR range for Data subnet "
  default     = "192.168.1.0/24"
}

variable "public_subnet_name" {
  description = "Name of public subnet"
  default     = "public_subnet"
}

#-----------------------------------------------------------------------#

variable "private_subnet1_cidr" {
  description = "This is the CIDR range for Data subnet "
  default     = "192.168.2.0/24"
}

variable "private_subnet1_name" {
  description = "Name of private subnet"
  default     = "private_subnet1"
}



variable "private_subnet2_cidr" {
  description = "This is the CIDR range for Data subnet "
  default     = "192.168.3.0/24"
}

variable "private_subnet2_name" {
  description = "Name of private subnet"
  default     = "private_subnet2"
}

#-----------------------------------------------------------------------#
variable "internet_gateway_name" {
  description = "Name of internet gateway "
  default     = "elk_vpc_igw"
}
/*
#---------------------------------------------------------------------#
variable "nat_gateway_name" {
  description = "Name of nat gateway "
  default     = "vpc_nat_gateway"
}

#---------------------------------------------------------------------#
*/
variable "public_subnet_route_table" {
  type = string
  default = "public_subnet_route_table"
}


variable "private_subnet1_route_table" {
  type = string
  default = "private_subnet1_route_table"
}

variable "private_subnet2_route_table" {
  type = string
  default = "private_subnet2_route_table"
}


