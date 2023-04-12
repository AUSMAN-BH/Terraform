variable "location" {
  type = string         
    description = "The location for the deployment "    
    default = "central us"
}

variable "rsgname" {
  type = string
  description = "Resource Group name"
  default = "TerraformRG"
}

variable "stgactname" {
  type = string
  description = "storage account name"
  #default = "TerraformRG"
}