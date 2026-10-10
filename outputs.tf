output "amplify_webhooks_id" {
  description = "Map of id values across all amplify_webhooks, keyed the same as var.amplify_webhooks"
  value       = { for k, v in aws_amplify_webhook.amplify_webhooks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "amplify_webhooks_app_id" {
  description = "Map of app_id values across all amplify_webhooks, keyed the same as var.amplify_webhooks"
  value       = { for k, v in aws_amplify_webhook.amplify_webhooks : k => v.app_id if v.app_id != null && length(v.app_id) > 0 }
}
output "amplify_webhooks_arn" {
  description = "Map of arn values across all amplify_webhooks, keyed the same as var.amplify_webhooks"
  value       = { for k, v in aws_amplify_webhook.amplify_webhooks : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "amplify_webhooks_branch_name" {
  description = "Map of branch_name values across all amplify_webhooks, keyed the same as var.amplify_webhooks"
  value       = { for k, v in aws_amplify_webhook.amplify_webhooks : k => v.branch_name if v.branch_name != null && length(v.branch_name) > 0 }
}
output "amplify_webhooks_description" {
  description = "Map of description values across all amplify_webhooks, keyed the same as var.amplify_webhooks"
  value       = { for k, v in aws_amplify_webhook.amplify_webhooks : k => v.description if v.description != null && length(v.description) > 0 }
}
output "amplify_webhooks_region" {
  description = "Map of region values across all amplify_webhooks, keyed the same as var.amplify_webhooks"
  value       = { for k, v in aws_amplify_webhook.amplify_webhooks : k => v.region if v.region != null && length(v.region) > 0 }
}
output "amplify_webhooks_url" {
  description = "Map of url values across all amplify_webhooks, keyed the same as var.amplify_webhooks"
  value       = { for k, v in aws_amplify_webhook.amplify_webhooks : k => v.url if v.url != null && length(v.url) > 0 }
}

