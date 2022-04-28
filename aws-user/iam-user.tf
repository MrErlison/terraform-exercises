// https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user

resource "aws_iam_user" "users" {
  name  = var.project-sapphire-users[count.index]
  count = length(var.project-sapphire-users)
}