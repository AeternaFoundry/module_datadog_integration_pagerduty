resource "datadog_integration_pagerduty" "integration_pagerduties" {
  for_each = var.integration_pagerduties

  subdomain = each.value.subdomain
  api_token = each.value.api_token
  schedules = each.value.schedules
}

