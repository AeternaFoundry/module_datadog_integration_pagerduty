variable "integration_pagerduties" {
  description = <<EOT
Map of integration_pagerduties, attributes below
Required:
    - subdomain
Optional:
    - api_token
    - schedules
EOT

  type = map(object({
    subdomain = string
    api_token = optional(string)
    schedules = optional(list(string))
  }))
}

