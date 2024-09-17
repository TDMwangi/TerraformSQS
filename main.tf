provider "aws" {
  access_key = ""
  secret_key = ""
  region     = ""
}

module "sqs" {
  source = "./modules"

  name               = "my-queue"
  visibility_timeout = 30
  message_retention  = 345600
  delivery_delay     = 0
  max_message_size   = 2048
  wait_time          = 0

  enable-server-side-encryption = true
}
