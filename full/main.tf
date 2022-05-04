
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "> 1.2.0"
    }
  }
}

resource "local_file" "local" {
  filename        = "${var.path}/${var.name}-${random_string.random.id}"
  content         = var.message
  file_permission = var.permission
}

resource "random_string" "random" {
  length  = var.length
  upper   = false
  special = true
}