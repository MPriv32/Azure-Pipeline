variable "public_ssh_key" {
  type = string
}

variable "infra_env" {
  type = string
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}