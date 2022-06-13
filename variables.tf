variable "region" {
  type = string
  default = "us-west-2"
}

variable "region_az" {
  type = string
  default = "us-west-2b"
}

variable "infra_env" {
  type = string
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}
