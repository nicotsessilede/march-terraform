resource "aws_instance" "web" {
  ami           = var.ec2_ami
  instance_type = var.ec2_type
  count         = 2

  tags = {
    Name = "${var.ec2_name}-${count.index}"
  }
}