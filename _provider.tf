# Config the DigitalOcean Provider

terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "1.22.2"
    }
  }
}

variable "my_token" {}

provider "digitalocean" {
  token = var.my_token
}
