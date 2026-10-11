output "integration_pagerduties_id" {
  description = "Map of id values across all integration_pagerduties, keyed the same as var.integration_pagerduties except keys with no id are omitted"
  value       = { for k, v in datadog_integration_pagerduty.integration_pagerduties : k => v.id if v.id != null && length(v.id) > 0 }
}
output "integration_pagerduties_api_token" {
  description = "Map of api_token values across all integration_pagerduties, keyed the same as var.integration_pagerduties except keys with no api_token are omitted"
  value       = { for k, v in datadog_integration_pagerduty.integration_pagerduties : k => v.api_token if v.api_token != null && length(v.api_token) > 0 }
  sensitive   = true
}
output "integration_pagerduties_schedules" {
  description = "Map of schedules values across all integration_pagerduties, keyed the same as var.integration_pagerduties except keys with no schedules are omitted"
  value       = { for k, v in datadog_integration_pagerduty.integration_pagerduties : k => v.schedules if v.schedules != null && length(v.schedules) > 0 }
}
output "integration_pagerduties_subdomain" {
  description = "Map of subdomain values across all integration_pagerduties, keyed the same as var.integration_pagerduties except keys with no subdomain are omitted"
  value       = { for k, v in datadog_integration_pagerduty.integration_pagerduties : k => v.subdomain if v.subdomain != null && length(v.subdomain) > 0 }
}

