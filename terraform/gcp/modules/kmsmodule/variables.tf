// Required values to be set in terraform.tfvars
variable "project" {
  description = "The project in which to hold the components"
  type        = string
}

variable "region" {
  description = "The region in which to create the VPC network"
  type        = string
  default     = "northamerica-northeast1"
}

// Optional values that can be overridden or appended to if desired.
variable "name" {
  description = "The name to give the new sql cluster."
  type        = string
  default     = "private-cluster-1"
}

