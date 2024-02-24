data "docker_registry_image" "debian_bookworm" {
  name = "debian:bookworm"
}

resource "docker_image" "debian_bookworm" {
  name          = data.docker_registry_image.debian_bookworm.name
  pull_triggers = [data.docker_registry_image.debian_bookworm.sha256_digest]
}
