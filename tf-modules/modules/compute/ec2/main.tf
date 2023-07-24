data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}
#
resource "aws_instance" "web" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance-type
  subnet_id                   = var.subnet-id
  vpc_security_group_ids      = [var.sg-id]
  associate_public_ip_address = true
  key_name                    = var.key-name
  user_data                   = var.user-data
  tags = {
    Name = "${var.environment}-ec2-web-instance"
  }
}