variable "folder_name" {
  description = "Local folder name to create"
  type        = string
  default     = "./generated"
}

variable "file_name" {
  description = "Name of the file to create"
  type        = string
  default     = "message.txt"
}

variable "file_content" {
  description = "Content to put in the file"
  type        = string
  default     = "Hello from Terraform!"
}
