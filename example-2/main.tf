module "ec2" {
    source = "./ec2"
    sg     = module.sg.sgid
}

module "sg" {
    source = "./sg"
}

output  "public_ip" {
    value  = module.ec2.public_ip
}