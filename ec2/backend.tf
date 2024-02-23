terraform {
  backend "s3" {
    region   = "ap-southeast-1"
    bucket   = "juju-terraform-tf-state-s3"
    dynamodb_table = "juju-terraform-tf-state-dynamodb"
    key      = "state/terraform.tfstate"
  }
}