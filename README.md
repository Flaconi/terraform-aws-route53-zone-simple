# Route53 Zone Simple Module

[![Build Status](https://travis-ci.com/Flaconi/terraform-aws-route53-zone-simple.svg?branch=master)](https://travis-ci.com/Flaconi/terraform-aws-route53-zone-simple)
[![Tag](https://img.shields.io/github/tag/Flaconi/terraform-aws-route53-zone-simple.svg)](https://github.com/Flaconi/terraform-aws-route53-zone-simple/releases)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

This Terraform module creates a Route53 Zone.

## Usage

### DynamoDB Microservice

```hcl
module "route53-zone-simple" {
  source = "github.com/flaconi/terraform-aws-route53-zone-simple"

  domain_name  = "domain.tld"
  tags = map("Tags", "Enabled")
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
| domain\_name | n/a | `string` | n/a | yes |
| tags | n/a | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| name\_servers | n/a |
| zone\_id | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## License

[MIT](LICENSE)

Copyright (c) 2019 [Flaconi GmbH](https://github.com/Flaconi)
