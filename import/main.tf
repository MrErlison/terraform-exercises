// aws ec2 create-key-pair --endpoint http://aws:4566 --key-name jade --query 'KeyMaterial' --output text > ./jade.pem

resource "aws_instance" "ruby" {
  ami           = var.ami
  instance_type = var.instance_type
  for_each      = var.name
  key_name      = var.key_name
  tags = {
    Name = each.value
  }
}
output "instances" {
  value = aws_instance.ruby
}

// aws ec2 describe-instances --endpoint http://aws:4566 --filters "Name=image-id,Values=ami-082b3eca746b12a89" |jq -r '.Reservations[].Instances[].InstanceId'
// terraform import aws_instance.jade-mw i-6c1c6c0b7d3d7af89
// terraform state list

resource "aws_instance" "jade-mw" {
  ami           = var.ami
  instance_type = var.instance_type
}