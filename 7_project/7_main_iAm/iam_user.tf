resource "aws_iam_user" "name" {
    for_each = toset(var.users)
    name = each.key
    path = "/"

    tags = {
      Name = each.key
    }

    lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}