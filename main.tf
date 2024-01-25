resource "docker_network" "network_dev_docker" {
  name       = "network-dev-docker"
  attachable = true
  ipv6       = false
  driver     = "host"
  ipam_config {
    ip_range = "10.20.0.0/24"
    subnet   = "10.20.0.0/24"
    gateway  = "10.20.0.1"
  }
}

