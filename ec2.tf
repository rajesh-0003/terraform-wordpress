#Creating 1st EC2 instance
resource "aws_instance" "instance-wordpress" {
  ami = "ami-06b21ccaeff8cd686"
  instance_type = "t2.micro"
  key_name = "anil"
  subnet_id = aws_subnet.public_sb_1.id
  vpc_security_group_ids = [aws_security_group.security1.id]
  associate_public_ip_address = true
  user_data = file("data.sh")
tags = {
    Name = "public_wordpress-1"
}
}
