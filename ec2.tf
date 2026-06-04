data "aws_vpc" "selected" {
  filter {
    name   = "tag:Name"
    values = ["${var.project_id}-vpc"]
  }
}

data "aws_subnets" "selected" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.selected.id]
  }

  filter {
    name   = "map-public-ip-on-launch"
    values = [true]
  }
}

data "aws_security_group" "selected" {
  vpc_id = data.aws_vpc.selected.id

  filter {
    name   = "group-name"
    values = [var.aws_security_group_name]
  }
}

resource "aws_instance" "main" {
  instance_type = var.instance_type
  ami           = var.ami_id

  subnet_id                   = data.aws_subnets.selected.ids[0]
  vpc_security_group_ids      = [data.aws_security_group.selected.id]
  key_name                    = aws_key_pair.ssh_key.key_name
  associate_public_ip_address = true

  tags = merge(local.common_tags, {
    Name = var.aws_instance_name
  })
}

