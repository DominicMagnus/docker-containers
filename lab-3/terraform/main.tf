terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "httpd" {
  name = "httpd:latest"
}

resource "docker_container" "my_apache_container" {
  name  = "my-apache-container"
  image = "httpd:latest"

  ports {
    external = 8081
    internal = 80
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  volumes {
    container_path = "/usr/local/apache2/htdocs"
    host_path      = "/workspace"
    volume_name    = "html_volume"
  }
}

resource "docker_volume" "html_volume" {
  name = "html_volume"
}

