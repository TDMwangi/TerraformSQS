provider "aws" {
  access_key = ""
  secret_key = ""
  region     = ""
}

module "sqs" {
  source = "./modules"
}
