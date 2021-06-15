module "network" {
  source  = "app.terraform.io/bandrei_hc/network/google"
  version = "3.2.2"
  network_name = "bandrei-module-network"
  project_id = var.project
  subnets = [
  {
    subnet_name   = "bandrei-module-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]

}