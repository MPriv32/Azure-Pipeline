########### Locals ###########
locals {
  name       = random_pet.name.id
  public_key = var.public_ssh_key
  region     = "us-west-2"
  region_az  = "us-west-2b"
}

resource "random_pet" "name" {
  length = 1
}

resource "random_id" "prefix" {
  byte_length = 8
}

variable "public_ssh_key" {
  type = string
}
