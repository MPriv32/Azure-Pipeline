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

variable "rdp_id" {
  type = string
}

variable "winrm_id" {
  type = string
}

variable "gw_1" {
  type = string
}

variable "subnet_1" {
  type = string
}