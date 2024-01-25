resource "docker_network" "network_dev_docker" {
  name       = "dev-docker"
  attachable = true
  ipv6       = false
  driver     = "bridge"
  ipam_config {
    ip_range = "10.20.0.0/24"
    subnet   = "10.20.0.0/24"
    gateway  = "10.20.0.1"
  }
  options = {
    "com.docker.network.bridge.name" = "dev-docker"
  }
}

resource "docker_network" "network_tst_docker" {
  name       = "tst-docker"
  attachable = true
  ipv6       = false
  driver     = "bridge"
  ipam_config {
    ip_range = "10.30.0.0/24"
    subnet   = "10.30.0.0/24"
    gateway  = "10.30.0.1"
  }
  options = {
    "com.docker.network.bridge.name" = "tst-docker"
  }
}

