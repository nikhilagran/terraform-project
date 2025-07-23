terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

provider "local" {}
provider "null" {}

# Create local directory
resource "null_resource" "make_directory" {
  provisioner "local-exec" {
    command = "mkdir generated"
  }
}
# Create a local file inside the directory
resource "local_file" "example_file" {
  depends_on = [null_resource.make_directory]

  content  = var.file_content
  filename = "${var.folder_name}/${var.file_name}"
}
