resource "aws_key_pair" "ssh_key" {
  key_name   = var.aws_keypair_name
  public_key = var.ssh_key

  tags = local.common_tags
}
