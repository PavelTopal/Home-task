resource "aws_instance" "myinstance1" {
  ami                         = ami-0b5eea76982371e91
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.pub-subnet-1.id
  vpc_security_group_ids      = [aws_security_group.task1-SG.id]
  key_name                    = "task1-key"
  associate_public_ip_address = true
  user_data                   = <<EOF
    #!/bin/bash 
    yum install httpd -y 
    service httpd start 
    chkconfig httpd on 
    echo "Hello Evolve Cyber" > /var/www/html/index.html
    EOF

  tags = var.tags-test1

}
  
  resource "aws_instance" "myinstance2" {
  ami                         = ami-0b5eea76982371e91
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.pub-subnet-2.id
  vpc_security_group_ids      = [aws_security_group.task1-SG.id]
  key_name                    = "task1-key"
  associate_public_ip_address = true
  user_data                   = <<EOF
    #!/bin/bash 
    yum install httpd -y 
    service httpd start 
    chkconfig httpd on 
    echo "Hello Evolve Cyber" > /var/www/html/index.html
    EOF

  tags = var.tags-test1

}
  
  resource "aws_instance" "myinstance3" {
  ami                         = ami-0b5eea76982371e91
  instance_type               = "t2.micro"
   subnet_id                  = aws_subnet.pub-subnet-3.id
  vpc_security_group_ids      = [aws_security_group.task1-SG.id]
  key_name                    = "task1-key"
  associate_public_ip_address = true
  user_data                   = <<EOF
    #!/bin/bash 
    yum install httpd -y 
    service httpd start 
    chkconfig httpd on 
    echo "Hello Evolve Cyber" > /var/www/html/index.html
    EOF

  tags = var.tags-test1

}
  