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

variable "users" {
  type = list(string)
  default = [ "user-001", "user-09", "user-05", "user-00", "user-01", "user-02", "user-03", "user-04"]
}