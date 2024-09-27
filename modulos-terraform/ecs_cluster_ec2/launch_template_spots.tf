resource "aws_launch_template" "spots" {
  name_prefix            = format("%s-spot", var.project_name)
  image_id               = var.node_ami
  update_default_version = true
  instance_type          = var.node_instance_type

  vpc_security_group_ids = [
    aws_security_group.main.id
  ]

  instance_market_options {
    market_type = "spot"
    spot_options {
      #block_duration_minutes         = 60
      instance_interruption_behavior = "terminate"
      max_price                      = var.spot_price
    }
  }

  iam_instance_profile {
    name = aws_iam_instance_profile.main.name
  }

  block_device_mappings {
    device_name = "/dev/xvda"
    ebs {
      volume_size = var.node_volume_size
      volume_type = var.node_volume_type
    }
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = format("%s-spot", var.project_name)
    }
  }
  user_data = base64encode(templatefile("${path.module}/templates/user_data.tpl", {
    CLUSTER_NAME = var.project_name
  }))

}