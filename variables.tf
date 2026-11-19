variable "render_api_key" {
  description = "API key from Render Account Settings"
  type        = string
  sensitive   = true
}

variable "render_owner_id" {
  description = "Render Workspace / Owner ID (starts with tea-... or usr-...)"
  type        = string
}

variable "service_name" {
  description = "Name of the Web Service on Render"
  type        = string
  default     = "terraform-docker-app"
}

variable "region" {
  description = "Render region (e.g., frankfurt, oregon, ohio, singapore)"
  type        = string
  default     = "frankfurt"
}

variable "repo_url" {
  description = "Public or connected GitHub repository URL containing Dockerfile"
  type        = string
}

variable "branch" {
  description = "Git branch to deploy"
  type        = string
  default     = "main"
}

variable "app_port" {
  description = "Application port exposed inside the container"
  type        = number
  default     = 3000
}
