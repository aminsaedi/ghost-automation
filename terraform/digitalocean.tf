resource "digitalocean_droplet" "ghost-app" {
  image = "ubuntu-22-04-x64"
  name  = "ghost-app"
  size = "s-1vcpu-512mb-10gb"
  ssh_keys = [
    data.digitalocean_ssh_key.default.id
  ]
}

resource "digitalocean_droplet" "ghost-db" {
  image = "ubuntu-22-04-x64"
  name  = "ghost-db"
  size = "s-1vcpu-512mb-10gb"
  ssh_keys = [
    data.digitalocean_ssh_key.default.id
  ]
}

resource "digitalocean_droplet" "ghost-firewall" {
  image = "ubuntu-22-04-x64"
  name  = "ghost-firewall"
  size = "s-1vcpu-512mb-10gb"
  ssh_keys = [
    data.digitalocean_ssh_key.default.id
  ]
}


# Outputs

output "app_ip" {
  value = digitalocean_droplet.ghost-app.ipv4_address
}

output "db_ip" {
  value = digitalocean_droplet.ghost-db.ipv4_address
}

output "firewall_ip" {
  value = digitalocean_droplet.ghost-firewall.ipv4_address
}