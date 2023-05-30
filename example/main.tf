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

resource "aws_route53_record" "test" {
  zone_id = "Z0849970P5LI08J61JCE"
  name    = "test-dev.naveendevops.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.web.private_ip]
}

output "route" {
  value=aws_route53_record.test.ttl
}
