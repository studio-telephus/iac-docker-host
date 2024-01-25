resource "docker_network" "network_dev_docker" {
  name       = "dev-docker"
  attachable = true
  ipv6       = false
  check_duplicate = true
  driver     = "bridge"
  ipam_config {
    ip_range = "10.30.0.0/24"
    subnet   = "10.30.0.0/24"
    gateway  = "10.30.0.1"
  }
  options = {
    "com.docker.network.bridge.name" = "dev-docker"
    "com.docker.network.bridge.host_binding_ipv4"    = "0.0.0.0"
    "com.docker.network.driver.mtu"                  = "1500"
    "com.docker.network.bridge.enable_ip_masquerade" = "true"
    "com.docker.network.bridge.enable_icc"           = "true"
  }
}

resource "docker_network" "network_tst_docker" {
  name       = "tst-docker"
  attachable = true
  ipv6       = false
  check_duplicate = true
  driver     = "bridge"
  ipam_config {
    ip_range = "10.30.0.0/24"
    subnet   = "10.30.0.0/24"
    gateway  = "10.30.0.1"
  }
  options = {
    "com.docker.network.bridge.name" = "tst-docker"
    "com.docker.network.bridge.host_binding_ipv4"    = "0.0.0.0"
    "com.docker.network.driver.mtu"                  = "1500"
    "com.docker.network.bridge.enable_ip_masquerade" = "true"
    "com.docker.network.bridge.enable_icc"           = "true"
  }
}

