resource "aws_instance" "app_server" {
  count         = (var.high_availability == true ? 2 : 1)
  ami           = data.aws_ami.ubuntu22.id
  instance_type = "t2.micro"

  tags = {
    Name = var.app_name[count.index]
  }
}

resource "aws_instance" "api_server" {
  for_each      = var.api_name
  ami           = data.aws_ami.ubuntu22.id
  instance_type = "t2.micro"

  tags = {
    Name = each.value
  }
}


