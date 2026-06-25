variable "instance_type" {
  default = "t3.micro"
}
variable "ami_id" {
  default = "ami-0dc20c1f3b1bd7a8a" # Amazon Linux 2 (Sydney)
}
variable "key_name" {
  default = "My_Key_Pair"
}
