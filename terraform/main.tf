terraform {
  required_version = ">= 1.0"
}

locals {
  app_name    = "flask-devops-app"
  environment = "production"
  version     = "1.0.0"
  owner       = "Prayag K"

  app_config = {
    port        = 5000
    image       = "prayagkrajeevan/flask-devops-app:latest"
    health_path = "/health"
    live_url    = "https://flask-devops-app-production-3439.up.railway.app"
  }
}

output "app_info" {
  description = "Application deployment configuration"
  value = {
    name        = local.app_name
    environment = local.environment
    version     = local.version
    owner       = local.owner
    config      = local.app_config
  }
}