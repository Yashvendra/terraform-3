# IAM Role Var

variable "role-name" {
  description = "The name of the Role"
  type        = string
  default     = "CyberqRole"
}

variable "ExternalId" {
  description = "Copy ExternalId from Cyberq dashboard"
  type        = string
  default     = ""
}

variable "CyberqArn" {
  description = "Copy ARN from Cyberq dashboard"
  type        = string
  default     = ""
}
