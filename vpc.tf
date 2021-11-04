module "network" {
  source  = "app.terraform.io/Fairbanks/network/google"
  version = "3.4.0"

    project_id   = var.project
    network_name = "fairbanks-network"
    routing_mode = "GLOBAL"

    subnets = [
  {
    subnet_name   = "fairbanks-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}