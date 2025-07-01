terraform {
    required_version = "~> 1.12.2" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0.0"
     }
    }
   }

provider "registry.terraform.io/hashicorp/aws"{
        region = "us-east-1" 
        profile = "default"
	}

resource "aws_instance" "Renukainfra" {
	ami = "ami-05ffe3c48a9991133" 
	instance_type = "t2.nano"
}
