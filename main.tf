terraform {
  required_version = ">= 1.5.0"

  required_providers {
    render = {
      source  = "render-oss/render"
      version = "~> 1.3"
    }
  }
}

provider "render" {
  api_key  = var.render_api_key
  owner_id = var.render_owner_id
}

resource "render_web_service" "app" {
  name   = var.service_name
  plan   = "free"
  region = var.region

  runtime_source = {
    docker = {
      repo_url        = var.repo_url
      branch          = var.branch
      dockerfile_path = "Dockerfile"
    }
  }

  env_vars = {
    PORT = {
      value = tostring(var.app_port)
    }
  }

  lifecycle {
    ignore_changes = [maintenance_mode]
  }
}