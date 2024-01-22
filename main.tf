resource "docker_network" "dev_network" {
  name = "dev-network"
  attachable = true
  ipv6   = false
  driver = "bridge"
  ipam_config {
    ip_range = "10.20.0.0/24"
    subnet   = "10.20.0.0/24"
    gateway  = "10.20.0.1"
  }
}

