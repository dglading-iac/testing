resource"aws_security_group""allow_ssh"{
  name        ="allow_tls"
  description ="Allow SSH inbound traffic"

  ingress{
    description      ="SSH"
    from_port        =22
    to_port          =22
    protocol         ="tcp"
    cidr_blocks      =["0.0.0.0/0"]
    ipv6_cidr_blocks =["::/0"]
  }

  egress{
    from_port        =0
    to_port          =0
    protocol         ="-1"
    cidr_blocks      =["0.0.0.0/0"]
    ipv6_cidr_blocks =["::/0"]
  }
} 

