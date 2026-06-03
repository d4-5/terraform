variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet1_name" {
  description = "Name of first public subnet"
  type        = string
}

variable "subnet1_cidr" {
  description = "CIDR block for first subnet"
  type        = string
}

variable "availability_zone1" {
  description = "AZ for first subnet"
  type        = string
}

variable "subnet2_name" {
  description = "Name of second public subnet"
  type        = string
}

variable "subnet2_cidr" {
  description = "CIDR block for second subnet"
  type        = string
}

variable "availability_zone2" {
  description = "AZ for second subnet"
  type        = string
}

variable "subnet3_name" {
  description = "Name of third public subnet"
  type        = string
}

variable "subnet3_cidr" {
  description = "CIDR block for third subnet"
  type        = string
}

variable "availability_zone3" {
  description = "AZ for third subnet"
  type        = string
}

variable "internet_gateway" {
  description = "Name of Internet Gateway"
  type        = string
}

variable "routing_table" {
  description = "Name of route table"
  type        = string
}
