provider "aws" {
  access_key = var.my_access_key
  secret_key = var.my_secret_key
  region     = "us-west-2"
}

provider "random" {
}

variable "my_access_key" {
  type = string
}

variable "my_secret_key" {
  type = string
}

variable "public_ssh_key" {
  type = string
}

module "Infra" {
  source = "./modules/infra"
  region = "us-west-2"
  region_az = "us-west-2b"
  public_ssh_key = var.public_ssh_key
}