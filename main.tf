data "aws_vpc" "selected" {
  count = var.vpc_name != "" ? 1 : 0
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_route53_zone" "this" {
  name = var.domain_name
  vpc {
    vpc_id = var.vpc_name != "" ? data.aws_vpc.selected.id : null
  }
  tags    = var.tags
  comment = var.comment
}
