output "service_id" {
  description = "Created Render Web Service ID"
  value       = render_web_service.app.id
}

output "service_url" {
  description = "Public URL of the deployed Render Web Service"
  value       = render_web_service.app.url
}
