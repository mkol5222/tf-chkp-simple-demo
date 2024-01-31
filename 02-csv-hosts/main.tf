terraform {
  required_providers {
    checkpoint = {
      source  = "CheckPointSW/checkpoint"
      version = "2.6.0"
    }
  }
}

variable "CPSERVER" {
  type = string
}

variable "CPTENANT" {
  type = string
}

variable "CPAPIKEY" {
  type = string
}

provider "checkpoint" {
  # Configuration options
  session_name = "terraform-cp"
  server        = var.CPSERVER
  api_key       = var.CPAPIKEY
  context       = "web_api"
  cloud_mgmt_id = var.CPTENANT
}