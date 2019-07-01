resource "aws_instance" "example" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.example.private_ip} >> private_ip_address.txt"
  }
}

output "public ip" {
  value = "${aws_instance.example.public_ip}"
}
