vpc_cidr_block = "10.0.0.0/16"
Public_subnet  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
Private_subnet = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
allow_ports    = [443, 80, 22]
instance_type  = "t2.micro"