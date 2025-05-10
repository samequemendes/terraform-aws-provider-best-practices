provider "aws" {
  alias  = "prd"
  region = "us-east-1"
  profile = "prod"
}

provider "aws" {
  alias  = "hml"
  region = "us-west-2"
  profile = "hml"
}

module "network" {
  source = "../../modules/vpc"
  providers = {
    aws = aws.prd
  }
}