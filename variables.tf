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