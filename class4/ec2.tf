resource "aws_instance" "web" {
  ami           = var.ec2[0].ami
  instance_type = var.ec2[0].type
  #tags = var.ec2.tags
}
resource "aws_instance" "web2" {
  ami           = var.ec2[1].ami
  instance_type = var.ec2[1].type
  #tags = var.ec2.tags
}