# Route53 Zone Simple Module

[![Build Status](https://travis-ci.com/Flaconi/terraform-aws-route53-zone-simple.svg?branch=master)](https://travis-ci.com/Flaconi/terraform-aws-route53-zone-simple)
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
## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| comment | n/a | `string` | `""` | no |
| domain\_name | n/a | `string` | n/a | yes |
| tags | n/a | `map` | `{}` | no |
| vpc\_name | n/a | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| name\_servers | n/a |
| zone\_id | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## License

[MIT](LICENSE)

Copyright (c) 2019-2020 [Flaconi GmbH](https://github.com/Flaconi)
