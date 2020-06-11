terraform {
  backend "s3" {
    bucket = "talant-project123"
    key    = "project123path/project.tfstate"
    region = "us-east-1"
  }
}
