# terraform-3 module

#### main.tf
```
provider "aws" {
  region = "ap-south-1"
}

module "tf" {
    source = "git::https://github.com/SecLogic-Technologies/terraform-3.git"
    ExternalId = "dhjhfdf8fsh7878erwmru394fnjd83uwfjzdlnfr383"  # Copy from cyberq dashboard
    CyberqArn = "arn:aws:iam::1234567890:user/awsuser"          # Copy from cyberq dashboard
  
}
```
