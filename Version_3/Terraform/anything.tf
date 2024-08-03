terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 3.0"
        }
    }
}
provider "aws" {
    region = "eu-central-1"  # Replace with your desired AWS region
    shared_credentials_file = "~/.aws/credentials"
}
resource "aws_dynamodb_table" "tf_guestbook_table" {
  name           = "Guestbook2"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "Name"

  attribute {
    name = "Name"
    type = "S"
  }
}
