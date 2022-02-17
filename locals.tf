########### Locals ###########
locals {
  public_key = var.public_ssh_key
  region     = var.region
  region_az  = var.region_az
}

resource "random_id" "prefix" {
  byte_length = 8
}

variable "region" {
  type = string
  default = "us-west-2"
}

variable "region_az" {
  type = string
  default = "us-west-2b"
}

variable "public_ssh_key" {
  type = string
}

variable "infra_env" {
  type = string
}