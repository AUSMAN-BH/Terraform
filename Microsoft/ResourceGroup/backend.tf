# avd
terraform {
  cloud {
    organization = "USARIF"
    workspaces {
      name = "usarif_rg"
    }
  }
}




