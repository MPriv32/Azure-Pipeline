provider "aws" {
  access_key = var.my_access_key
  secret_key = var.my_secret_key
  region     = var.region
}

provider "random" {
}

resource "random_id" "prefix" {
  byte_length = 8
}

module "ec2" {
  source = "./modules/ec2"

  infra_env = var.infra_env
  public_ssh_key = var.public_ssh_key
  allow_rdp = module.sg.allow_rdp.id
  allow_winrm = module.sg.allow_winrm.id
}

module "iam" {
  source = "./modules/iam"

  infra_env = var.infra_env
}

module "s3" {
  source = "./modules/s3"

  infra_env = var.infra_env
}

module "sg" {
  source = "./modules/sg" 

  infra_env = var.infra_env
  vpc_ids = module.vpc.vpc_1.id
  }

module "vpc" {
  source = "./modules/vpc"

  infra_env = var.infra_env
}

