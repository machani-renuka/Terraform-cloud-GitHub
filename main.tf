terraform {
    required_version = "~> 1.11.2" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.91.0"
     }
    }
   }

provider "aws" {"registry.terraform.io/hashicorp/aws"}
        region = "us-east-1" 
        profile = "default"
	}

resource "aws_instance" "Renukainfra" {
	ami = "ami-08b5b3a93ed654d19" 
	instance_type = "t2.nano"
}
