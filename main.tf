#-- root/main.tf


module "networking" {
  source           = "./VPC"
  vpc_cidr         = "10.123.0.0/16"
  private_sn_count = 2
  public_sn_count  = 2
  max_subnets      = 5
  public_cidrs     = [for i in range(2, 200, 2) : cidrsubnet("10.123.0.0/16", 8, i)]
  private_cidrs    = [for i in range(1, 200, 2) : cidrsubnet("10.123.0.0/16", 8, i)]
}