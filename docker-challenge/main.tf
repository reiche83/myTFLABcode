terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
}

# Pulls the image
resource "docker_image" "simplegoservice" {
  name = var.image_name
}

# Create a container
resource "docker_container" "simplegoservice" {
  image = docker_image.simplegoservice.image_id
  name  = var.docker_name
  ports {
    internal = var.internal_port
    external = var. external_port

}
}
