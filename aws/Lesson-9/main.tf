provider "aws" {
    region = "eu-central-1"
}


data "aws_ami" "latest_ubuntu" {
  owners = ["099720109477"]
  most_recent = true
  filter {
    name = "name"
    value = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }
  
}


output "latest_ubuntu_ami_id" {
  value = "data.aws_ami.latest_ubuntu.id"
}

output "latest_ubuntu_ami_name" {
  value = "data.aws_ami.latest_ubuntu.name"
}

