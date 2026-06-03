output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.vpc.id
}

output "subnet1_id" {
  description = "ID of subnet 1"
  value       = aws_subnet.subnet1.id
}

output "subnet2_id" {
  description = "ID of subnet 2"
  value       = aws_subnet.subnet2.id
}

output "subnet3_id" {
  description = "ID of subnet 3"
  value       = aws_subnet.subnet3.id
}

output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.gw.id
}

output "route_table_id" {
  description = "ID of the route table"
  value       = aws_route_table.public.id
}
