
variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  default     = "ami-04aa00acb1165b32a" # Amazon Linux 2 AMI (adjust as needed)
}

variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key name"
  default     = "task-tracker-key"
}

variable "docker_image" {
  description = "Docker image for application"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Deployment environment"
  default     = "production"
}

variable "app_name" {
  description = "Application name"
  default     = "task-tracker"
}


variable "private_key_path" {
  description = "Path to private key for SSH"
  default     = "~/.ssh/task-tracker-key.pem"
}
