resource "docker_network" "network_dev_docker" {
  name       = "network-dev-docker"
  attachable = true
  ipv6       = false
  driver     = "bridge"
  ipam_config {
    ip_range = "10.20.0.0/24"
    subnet   = "10.20.0.0/24"
    gateway  = "10.20.0.1"
  }
}

resource "docker_network" "network_tst_docker" {
  name       = "network-tst-docker"
  attachable = true
  ipv6       = false
  driver     = "bridge"
  ipam_config {
    ip_range = "10.30.0.0/24"
    subnet   = "10.30.0.0/24"
    gateway  = "10.30.0.1"
  }
}

