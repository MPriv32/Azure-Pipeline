########### Locals ###########
locals {
  name       = random_pet.name.id
  public_key = var.public_ssh_key
  region     = var.region
  region_az  = var.region_az
}

resource "random_pet" "name" {
  length = 1
}

resource "random_id" "prefix" {
  byte_length = 8
}

variable "region" {
  type = string
}

variable "region_az" {
  type = string
}

variable "public_ssh_key" {
  type = string
}