data "aws_ip_ranges" "north_america_ec2" {
  regions  = ["eu-west-1"]
  services = ["ec2"]
}

output "IP_ADRS" {
  value       = "${data.aws_ip_ranges.north_america_ec2.cidr_blocks}"
  description = "The private IP address of the main server instance."
  sensitive   = true
}
