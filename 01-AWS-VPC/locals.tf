locals {
    vpc_cidr = "10.123.0.0/16"
}

locals {
    security_groups = {
        public = {
            name = "public_sg"
            description = "Security group"
            ingress = {
              ssh = {
                  from = 22
                  to = 22
                  protocol = "tcp"
                  cidr_blocks = [var.access_ip]
              }
              sftp = {
                  from = 25
                  to = 25
                  protocol = "tcp"
                  cidr_blocks = [var.access_ip]
              }
            }
         }
    }
}