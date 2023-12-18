module "ec2" {
  source = "../1_refer_module/vpc&sg&ec2"

  vpc_cidr_block = "192.168.0.0/16"
  Public_subnet  = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
  Private_subnet = ["192.168.4.0/24", "192.168.5.0/24", "192.168.6.0/24"]
  allow_ports    = [443, 80, 22, 8080]
  instance_type  = "t2.micro"

}