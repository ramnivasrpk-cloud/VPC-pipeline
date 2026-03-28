resource "aws_instance" "ec2" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux (example)
  instance_type = "t2.micro"

  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg.id]

  associate_public_ip_address = true

  tags = {
    Name = "terraform-ec2"
  }
}
