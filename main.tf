provider "aws" {
  access_key = var.my_access_key
  secret_key = var.my_secret_key
  region     = local.region
}

provider "random" {
}

variable "my_access_key" {
  type = string
}

variable "my_secret_key" {
  type = string
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}