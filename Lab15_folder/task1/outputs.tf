output "instance_id" {

  value = aws_instance.terraform_task1.id

}

output "public_ip" {

  value = aws_instance.terraform_task1.public_ip

}