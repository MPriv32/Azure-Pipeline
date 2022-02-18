output "subnet_1" {
  value = aws_subnet.subnet_1.id
}

output "vpc_1" {
  value = aws_vpc.vpc_1.id
}

output "gw_1" {
  value = aws_internet_gateway.gw_1.id
}