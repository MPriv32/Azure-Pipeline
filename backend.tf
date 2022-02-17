terraform {
	backend "s3" {
		bucket = "mp32-terraform-bucket-backend"
		key    = "terraform.tfstate"
		region = "us-west-2"
	}
}