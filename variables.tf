# IAM Policy Var
variable "description" {
  description = "The name of the policy"
  type        = string
  default     = "Cyberq sns police"
}

variable "policy-name" {
  description = "The name of the policy"
  type        = string
  default     = "CyberqSnsPolicy"
}


variable "path" {
  description = "The name of the policy"
  type        = string
  default     = "/"
}

# IAM Role Var

variable "role-name" {
  description = "The name of the Role"
  type        = string
  default     = "CyberqRole"
}

variable "ExternalId" {
  description = "The ExternalId of the Role"
  type        = string
  default     = ""
}

variable "AccountId" {
  description = "The AccountId of the Role"
  type        = string
  default     = ""
}
