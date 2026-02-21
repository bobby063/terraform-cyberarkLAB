terraform {
  required_version = ">= 1.14.5"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.7"
    }
  }
}
