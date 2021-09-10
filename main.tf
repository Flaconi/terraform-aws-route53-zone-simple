resource "aws_route53_zone" "this" {
  name = var.domain_name

  dynamic "vpc" {
    for_each = var.vpc_name != "" ? [data.aws_vpc.selected[0].id] : []
    content {
      vpc_id = vpc.value
    }
  }

  tags    = var.tags
  comment = var.comment
}
