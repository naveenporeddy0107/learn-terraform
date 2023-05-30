resource "aws_instance" "web" {
  ami           = "ami-08ee87f57b38db5af"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

output "web" {
  address = aws_instance.web.public_ip
}