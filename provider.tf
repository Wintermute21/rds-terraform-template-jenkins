provider "aws" {
  assume_role {
    role_arn     = "arn:aws:iam::450022699797:role/OrganizationAccountAccessRole"
  }
  region                  = "us-west-2"
  shared_credentials_file = "$HOME/.aws/credentials"
}

