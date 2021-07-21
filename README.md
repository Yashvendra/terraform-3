# terraform-3 module

#### main.tf
```
provider "aws" {
  region = "ap-south-1"
}

module "tf" {
    source = "git::https://github.com/SecLogic-Technologies/terraform-3.git"
    ExternalId = "raghavsingh"  # Copy from cyberq dashboard
    AccountId = "1234566789"    # Copy from cyberq dashboard
  
}
```
