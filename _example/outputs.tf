output "sentinel" {
  value       = join("", module.sentinel.*.sentinel_id)
  description = "The ID of the Security Insights Sentinel Onboarding States."
}
