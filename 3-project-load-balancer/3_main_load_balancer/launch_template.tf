resource "aws_launch_template" "foo" {
  name          = "my-launch-template"
  description   = "My Launch Template"
  image_id      = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  security_group_names = [aws_security_group.allow_ports.name]

  user_data = filebase64("${path.module}/data.sh")

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "myasg"
    }
  }
}