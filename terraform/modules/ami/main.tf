# Hard-coded Amazon Linux 2023 AMI for eu-central-1
locals {
  ami_id = "ami-0f78f0f0c76cef16f"
}

# Output the AMI ID
data "aws_ami" "amazon_linux" {
  filter {
    name   = "image-id"
    values = [local.ami_id]
  }
}