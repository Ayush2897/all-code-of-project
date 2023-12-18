variable "vpc_cidr_block" {
  type = string
}

variable "Public_subnet" {
  type = list(string)
}

variable "Private_subnet" {
  type = list(string)
}

variable "allow_ports" {
  type = set(number)
}

variable "instance_type" {
  type = string
}