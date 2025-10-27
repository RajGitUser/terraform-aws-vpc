variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "project_name" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "vpc_tags" {
    default = {}
}

variable "igw_tags" {
    default = {}
}

variable "subnet_public_cidrs" {
    type = list
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "subnet_public_tags" {
    default = {}
}

variable "subnet_private_cidrs" {
    type = list
    default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "subnet_private_tags" {
    default = {}
}

variable "subnet_database_cidrs" {
    type = list
    default = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "subnet_database_tags" {
    default = {}
}

variable "public_route_table_tags" {
    default = {}
}

variable "private_route_table_tags" {
    default = {}
}

variable "database_route_table_tags" {
    default = {}
}

variable "eip_tags" {
    default = {}
}

variable "nat_gateway_tags" {
    default = {}
}

variable "is_peering_required" {
    type = bool
    default = true
}

variable "peering_tags" {
    default = {}
}