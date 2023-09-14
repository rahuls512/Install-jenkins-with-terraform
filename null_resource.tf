# an empty resource block
resource "null_resource" "name" {

  # ssh into the ec2 instance 
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("~/Downloads/awskeypair.pem")
    host        = aws_instance.ec2_instance.public_ip
  }

  # copy the install_jenkins.sh file from your computer to the ec2 instance 
  provisioner "file" {
    source      = "intsall_jenkins.sh"
    destination = "/tmp/intsall_jenkins.sh"
  }

  # set permissions and run the install_jenkins.sh file
  provisioner "remote-exec" {
    inline = [
      "sudo chmod +x /tmp/intsall_jenkins.sh",
      "sh /tmp/intsall_jenkins.sh",
    ]
  }
}