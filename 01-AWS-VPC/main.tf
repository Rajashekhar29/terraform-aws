#-- root/main.tf

module "networking" {
  source           = "./VPC"
  vpc_cidr         = local.vpc_cidr
  access_ip        = var.access_ip
  security_groups = local.security_groups
  private_sn_count = 2
  public_sn_count  = 2
  max_subnets      = 5
  public_cidrs     = [for i in range(2, 200, 2) : cidrsubnet(local.vpc_cidr, 8, i)]
  private_cidrs    = [for i in range(1, 200, 2) : cidrsubnet(local.vpc_cidr, 8, i)]
}

