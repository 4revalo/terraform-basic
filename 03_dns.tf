# DNS domain

resource "digitalocean_domain" "luisgagocasas" {
  name = "luisgagocasas.com"
}

resource "digitalocean_record" "www" {
  domain = digitalocean_domain.luisgagocasas.name
  type   = "A"
  name   = "@"
  ttl    = "300"
  value  = digitalocean_droplet.web.ipv4_address
}

