terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  # Allow running without real credentials to reach provider validation stage
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true

  # These are intentional mock credentials for local reproduction only.
  # For real usage, set AWS_ACCESS_KEY_ID / AWS_SECRET_ACCESS_KEY env vars instead.
  access_key = "mock_access_key"
  secret_key = "mock_secret_key"
}
