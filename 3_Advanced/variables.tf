variable "app_name" {
  description = "Values of the Name tag for the EC2 instance"
  type        = list  
  default     = ["app1", "app2", "app3"]
}
variable "app_count" {
  description = "Number of EC2 instances to be created"
  type        = number
  default     = 2
}

variable "api_name" {
  description = "Values of the Name tag for the EC2 instance"
  type        = list  
  default     = ["api1", "api2", "api3"]
}

variable "high_availability" {
  description =  description = "If this is a multiple instance deployment, choose `true` to deploy more instances"
  type        = bool  
  default     = false  
}