variable "domain_name" {
  type = string
}

variable "vpc_name" {
  type    = string
  default = ""
}

variable "tags" {
  type    = map
  default = {}
}

variable "comment" {
  type    = string
  default = ""
}
