variable "resource_group_location" {
  default     = "eastus"
  description = "Location of the resource group."
}

variable "rg_name" {
  type        = string
  default     = "rg-avd-resources"
  description = "Name of the Resource group in which to deploy service objects"
}

variable "workspace" {
  type        = string
  description = "Name of the Azure Virtual Desktop workspace"
  default     = "AVD TF Workspace"
}

variable "hostpool" {
  type        = string
  description = "Name of the Azure Virtual Desktop host pool"
  default     = "AVD-TF-HP"
}

variable "rfc3339" {
  type        = string
  default     = "2023-04-15T12:43:13Z"
  description = "Registration token expiration"
}

variable "prefix" {
  type        = string
  default     = "avdtf"
  description = "Prefix of the name of the AVD machine(s)"
}

variable "aadgroup" {
  type        = string
  default     = "avd_testgroup"
  description = "Prefix of the name of the AVD machine(s)"
}

variable "roleid" {
  type        = string
  default     = "Desktop Virtualization User"
  description = "Prefix of the name of the AVD machine(s)"
}

variable "rdsh_count" {
  description = "Number of AVD machines to deploy"
  default     = 2
}

variable "vm_size" {
  description = "Size of the machine to deploy"
  #default     = "Standard_DS2_v2"
  default     = "Standard_B1s"
}

variable "local_admin_username" {
  type        = string
  default     = "aadjoiner"
  description = "local admin username"
}

variable "local_admin_password" {
  type        = string
  default     = "Xs_!*jkljoin2"
  description = "local admin password"
  sensitive   = true
}

variable "domain_name" {
  type        = string
  default     = "usarif.onmicrosoft.com"
  description = "Name of the domain to join"
}

variable "domain_user_upn" {
  type        = string
  default     = "usarif@usarif.onmicrosoft.com" # do not include domain name as this is appended
  description = "Username for domain join (do not include domain name as this is appended)"
}

variable "domain_password" {
  type        = string
  default     = "ChangeMe123!"
  description = "Password of the user to authenticate with the domain"
  sensitive   = true
}

variable "ou_path" {
  default = ""
}

#Configure Azure Virtual Desktop role-based access control using Terraform
variable "avd_users" {
  description = "AVD users"
  default = [
    "avduser01@usarif.onmicrosoft.com",
    "avduser02@usarif.onmicrosoft.com"
  ]
}

#Configure Azure Virtual Desktop role-based access control using Terraform
variable "aad_group_name" {
  type        = string
  default     = "AVDUsers"
  description = "Azure Active Directory Group for AVD users"
}
