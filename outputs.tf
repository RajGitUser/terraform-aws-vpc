output "vpc_id" {
    value = aws_vpc.main.id
}

output "subnet_private_ids" {
    value = aws_subnet.public[*].id
}

output "subnet_public_ids" {
    value = aws_subnet.public[*].id
}

output "subnet_database_ids" {
    value = aws_subnet.public[*].id
}