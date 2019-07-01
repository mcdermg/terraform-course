resource "aws_instance" "example" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  key_name      = "${var.key_name}"

  tags {
    Name  = "${var.instance_name}"
    Count = "example-${count.index}"
  }

  count = "${var.count}"
}
