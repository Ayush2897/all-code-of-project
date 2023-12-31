data "aws_availability_zones" "available" {
  state = "available"

  filter {
    name   = "zone-type"
    values = ["availability-zone"]
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

# resource "aws_instance" "webserver" {
#   count                       = 3
#   ami                         = data.aws_ami.ubuntu.id
#   instance_type               = var.instance_type
#   subnet_id                   = element(aws_subnet.public[*].id, count.index) == "" ? aws_subnet.private[count.index % length(aws_subnet.private)].id : aws_subnet.public[count.index % length(aws_subnet.public)].id
#   associate_public_ip_address = true
# }

# resource "aws_instance" "webserver" {
#   count           = 3
#   ami             = data.aws_ami.ubuntu.id
#   instance_type   = var.instance_type
#   subnet_id       = aws_subnet.private[count.index].id



#   tags = {
#     Name = "webserver-${count.index}"
#   }
# }



# output "pivate-ip" {
#   value = aws_instance.webserver[*].private_ip
# }


# resource "aws_instance" "webserver-1" {
#   count                       = 3
#   ami                         = data.aws_ami.ubuntu.id
#   instance_type               = var.instance_type
#   subnet_id                   = aws_subnet.public[count.index].id
#   associate_public_ip_address = true




#   tags = {
#     Name = "DevCloudGeek-webserver-${count.index}"
#   }
# }

# output "public-ip" {
#   value = aws_instance.webserver-1[*].public_ip
# }