provider "aws" {
  profile = "terraform"
  region  = "us-east-1"
}

module "vault" {
  source  = "hashicorp/vault/aws"
  version = "0.11.4"
  # insert the 4 required variables here
  create_dns_entry = true
  hosted_zone_domain_name = "celestialindustries.info"
  ssh_key_name = "tfmodule.pem"
  vault_domain_name = "vault.celestialindustries.info"
  ami_id = "ami-0d3b2cf862bc2d41b"
  consul_cluster_name = "consol-test-cluster"
  vault_cluster_name = "vault-test-cluster"
}
