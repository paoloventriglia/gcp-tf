variable "project_id" {
  description = "The ID of the project where this VPC will be created"
  default = ""
}

variable "network_name" {
  description = "The name of the network being created"
  default = ""
}

variable "subnets" {
  type        = "list"
  description = "The list of subnets being created"
  default = ["",""]
}

variable "secondary_ranges" {
  type        = "map"
  description = "Secondary ranges that will be used in some of the subnets"
}

variable "shared_vpc_host" {
  type        = "string"
  description = "Makes this project a Shared VPC host if 'true' (default 'false')"
  default     = "false"
}
