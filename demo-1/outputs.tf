output "address" {
  value = "Instances: ${element(aws_instance.example.*.id, 0)}"
}
