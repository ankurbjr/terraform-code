resource "aws_ebs_volume" "ebs_vol" {
  count = var.instances_number

  availability_zone = module.ec2.availability_zone[count.index]
  size              = 1
}