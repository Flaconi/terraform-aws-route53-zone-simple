data "aws_vpc" "selected" {
  count = var.vpc_name != "" ? 1 : 0
  tags = {
    Name = var.vpc_name
  }
}
