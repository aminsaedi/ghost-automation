resource "cloudflare_record" "app_domain" {
  zone_id = var.cloudflare_zone_id
  name = "app.ghost"
  value = digitalocean_droplet.ghost-app.ipv4_address
  type = "A"
  proxied = false
}

resource "cloudflare_record" "db_domain" {
  zone_id = var.cloudflare_zone_id
  name = "db.ghost"
  value = digitalocean_droplet.ghost-db.ipv4_address
  type = "A"
  proxied = false
}

resource "cloudflare_record" "firewall_domain" {
  zone_id = var.cloudflare_zone_id
  name = "firewall.ghost"
  value = digitalocean_droplet.ghost-firewall.ipv4_address
  type = "A"
  proxied = false
}

resource "cloudflare_record" "root_domain" {
  zone_id = var.cloudflare_zone_id
  name = "ghost"
  value = digitalocean_droplet.ghost-firewall.ipv4_address
  type = "A"
  proxied = true
}


# Outputs

output "app_fqdn" {
  value = cloudflare_record.app_domain.hostname
  description = "The FQDN for the app droplet (shouldn't be used directly)"
}

output "db_fqdn" {
  value = cloudflare_record.db_domain.hostname
  description = "The FQDN for the db droplet (only accessible from the app droplet)"
}

output "firewall_fqdn" {
  value = cloudflare_record.firewall_domain.hostname
  description = "The FQDN for the firewall droplet (used for SSH access)"
}

output "root_fqdn" {
  value = cloudflare_record.root_domain.hostname
  description = "The FQDN for the root domain (accessible from the internet for users)"
}