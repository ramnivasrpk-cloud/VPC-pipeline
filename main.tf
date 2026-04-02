resource "aws_instance" "ubuntu_server" {
  ami           = "ami-05d2d839d4f73aafb" # Ubuntu (ap-south-1)
  instance_type = "t2.micro"

  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg.id]

  associate_public_ip_address = true

  tags = {
    Name = "ram-ubuntu-server"
  }
}
