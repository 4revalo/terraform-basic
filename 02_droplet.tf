# Create Droplet

resource "digitalocean_droplet" "web" {
  image     = "ubuntu-18-04-x64"
  name      = "web"
  region    = "nyc1"
  size      = "s-1vcpu-1gb"
  user_data = file("userdata/basic.yml")
  ssh_keys  = [digitalocean_ssh_key.luisgago.fingerprint]
}
