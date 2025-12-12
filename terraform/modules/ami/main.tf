# Hard-coded Amazon Linux 2023 AMI for eu-central-1
locals {
  ami_id = "ami-004e960cde33f9146"  # Ubuntu Server 24.04 LTS (HVM),EBS General Purpose (SSD) Volume Type
}

# Output the AMI ID
data "aws_ami" "amazon_linux" {
  filter {
    name   = "image-id"
    values = [local.ami_id]
  }
}