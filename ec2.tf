provider "aws" {
  region                 = "us-east-1"
  access_key             = "AKIA6BVISBY5NV5AGMP7"
  secret_key             = "sc4n1wMBHWVtfjCEtxRZqzj4ihbFlz3YXse1QBaw"
}
resource "aws_instance" "example" {

  ami                    = "ami-0affd4508a5d2481b"
  instance_type          = "t2.micro"
  key_name               = "malthumkar"
  vpc_security_group_ids = ["Jenkins-SG"]

  tags = {
    name   = "terraform_instance"
  }
}

