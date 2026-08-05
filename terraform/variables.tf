
variable "aws_region" {
  type        = string
  default     = "us-east-2"
  description = "AWS region for deployment"
}

variable "environment" {
  type        = string
  default     = "dev"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
}