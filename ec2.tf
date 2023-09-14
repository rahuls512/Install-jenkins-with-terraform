# launch the ec2 instance and install website
resource "aws_instance" "ec2_instance" {
  ami                    = data.aws_ami.amazon_linux_2.id
  instance_type          = "t2.micro"
  subnet_id              = aws_default_subnet.default_az1.id
  vpc_security_group_ids = [aws_security_group.ec2_security_group.id]
  key_name               = "awskeypair"
  # user_data            = file("install_jenkins.sh")

  tags = {
    Name = "jenkins-server"
  }

  # wait for ec2 to be created
  depends_on = [aws_instance.ec2_instance]

}