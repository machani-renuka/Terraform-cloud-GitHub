terraform {
    required_version = "~> 1.10.5" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.84.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Renukainfra" {
	ami = "ami-0c614dee691cbbf37" 
	instance_type = "t2.micro"
}
