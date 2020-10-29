# Export my key SSH

resource "digitalocean_ssh_key" "luisgago" {
  name       = "Luis Gago"
  public_key = file("~/.ssh/id_rsa.pub")
}

