# Route53 Zone Simple Module

[![Lint Status](https://github.com/Flaconi/terraform-aws-route53-zone-simple/actions/workflows/linting.yml/badge.svg?branch=master)](https://github.com/Flaconi/terraform-aws-route53-zone-simple/actions/workflows/linting.yml)
[![Docs Status](https://github.com/Flaconi/terraform-aws-route53-zone-simple/actions/workflows/terraform-docs.yml/badge.svg?branch=master)](https://github.com/Flaconi/terraform-aws-route53-zone-simple/actions/workflows/terraform-docs.yml)
[![Tag](https://img.shields.io/github/tag/Flaconi/terraform-aws-route53-zone-simple.svg)](https://github.com/Flaconi/terraform-aws-route53-zone-simple/releases)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

This Terraform module creates a Route53 Zone.

## Usage

### Route53 public zone

```hcl
module "route53-zone-public" {
  source = "github.com/flaconi/terraform-aws-route53-zone-simple"

  domain_name  = "domain.tld"
  tags = map("Tags", "Enabled")

  comment = "Managed by Terraform"
}
```

### Route53 private zone

```hcl
module "route53-zone-private" {
  source = "github.com/flaconi/terraform-aws-route53-zone-simple"

  domain_name  = "domain.tld"
  tags = map("Tags", "Enabled")

  vpc_name = "default_vpc"

  comment = "Managed by Terraform"
}
```

## Resources

The following resources _CAN_ be created:

- 1 aws_route53_zone

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.26 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route53_zone.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |
| [aws_vpc.selected](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Domain name for route53 hosted zone | `string` | n/a | yes |
| <a name="input_comment"></a> [comment](#input\_comment) | Comment attached to hosted zone | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags attached to hosted zone | `map(string)` | `{}` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | VPC name for hosted zone attached it | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name_servers"></a> [name\_servers](#output\_name\_servers) | n/a |
| <a name="output_zone_id"></a> [zone\_id](#output\_zone\_id) | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## License

[MIT](LICENSE)

Copyright (c) 2019-2020 [Flaconi GmbH](https://github.com/Flaconi)
