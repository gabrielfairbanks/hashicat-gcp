terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Fairbanks"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
