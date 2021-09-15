variable "domain_name" {
  description = "Domain name for route53 hosted zone"
  type        = string
}

variable "vpc_name" {
  description = "VPC name for hosted zone attached it"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Map of tags attached to hosted zone"
  type        = map(string)
  default     = {}
}

variable "comment" {
  description = "Comment attached to hosted zone"
  type        = string
  default     = ""
}
