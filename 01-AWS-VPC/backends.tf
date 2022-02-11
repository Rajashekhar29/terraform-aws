terraform {
  cloud {
    organization = "rajhari"

    workspaces {
      name = "hcl-test"
    }
  }
}