resource "aws_instance" "frontend" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = "My_Key_Pair"

  user_data = file("user/apache.sh")

  tags = {
    Name = "Frontend-EC2"
  }
}

resource "aws_instance" "backend" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = "My_Key_Pair"

  user_data = file("user/mongodb.sh")

  tags = {
    Name = "Backend-EC2"
  }
}
