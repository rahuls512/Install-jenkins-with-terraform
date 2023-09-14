# print the url of the jenkins server
output "website_url" {
  value = join("", ["http://", aws_instance.ec2_instance.public_dns, ":", "8080"])
}