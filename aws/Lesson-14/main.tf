provider "aws" {
  region = "ca-central-1"
}

resource "null_resource" "command1" {
  provisioner "local-exec" {
      command = "echo Terraform START: $(date) >> log.txt"
  }
}

resource "null_resourcw" "command2" {
  provisioner "local-exec" {
      command = "ping -c 5 www.google.com"
  }

  depends_on = [null_resource.command1]
}

resource "null_resourcw" "command3" {
  provisioner "local-exec" {
      command = "print('Hello world!')"
      interpreter = ["python" , "-c"]
  }
}