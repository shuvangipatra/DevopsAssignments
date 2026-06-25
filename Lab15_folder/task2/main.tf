resource "aws_security_group" "sg" {

  name = "terraform-task1-sg"

  ingress {

    from_port = 22

    to_port = 22

    protocol = "tcp"

    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {

    from_port = 0

    to_port = 0

    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]

  }

}

resource "aws_instance" "terraform_task1" {

  ami = var.ami_id

  instance_type = var.instance_type

  associate_public_ip_address = false

  vpc_security_group_ids = [aws_security_group.sg.id]

  tags = {

    Name = "terraform_task1"

  }

}