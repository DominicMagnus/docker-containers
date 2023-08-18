provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "apache_image" {
  name = "httpd:latest"
}

resource "docker_container" "apache_container" {
  name  = "my-apache-container"
  image = docker_image.apache_image.latest
  ports {
    internal = 80
    external = 8080
  }

  # Mount the index.html file from your local directory into the container
  volumes {
    volume_name    = "html_volume"
    container_path = "/usr/local/apache2/htdocs"
    host_path      = "${path.module}/index.html" # Assuming index.html is in the same directory as the Terraform configuration
  }
}

resource "docker_volume" "html_volume" {
  name = "html_volume"
}
