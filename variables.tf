variable "ssh_key" {
  description = "Provides custom public SSH key"
  type        = string
}

variable "aws_keypair_name" {
  description = "Name of the AWS EC2 key pair used for SSH access"
  type        = string
}

variable "aws_instance_name" {
  description = "Name of the EC2 instance to create"
  type        = string
}

variable "project" {
  description = "Project name"
  default     = "epam-tf-lab"
  type        = string
}

variable "project_id" {
  description = "Unique project identifier"
  type        = string
}

variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "aws_security_group_name" {
  description = "Name tag of the existing security group."
  type        = string
}

locals {
  common_tags = {
    Project = var.project
    ID      = var.project_id
  }
}
