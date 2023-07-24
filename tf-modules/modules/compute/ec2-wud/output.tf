output "aws_instance_id" {
    value = aws_instance.ec2-instance.id
}

output "public-ip" {
    value = aws_instance.ec2-instance.public_ip
}
