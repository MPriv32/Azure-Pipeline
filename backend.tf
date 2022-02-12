terraform {
	backend "s3" {
		bucket = "mp32-terraform-bucket-backend"
		key    = "path/to/my/key"
		region = "us-west-2"
	}
}