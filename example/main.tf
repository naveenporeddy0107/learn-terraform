data "aws_ami" "centos" {
  most_recent = true
  owners = ["973714476881"]
}

/*
output "ami" {
  value = data.aws_ami.centos.image_id
}
*/


resource "aws_instance" "web" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

output "address" {
  value = aws_instance.web.public_ip
}
