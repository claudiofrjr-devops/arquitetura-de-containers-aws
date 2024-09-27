resource "aws_iam_role" "service_execution_role" {
  name = format("%s-%s-service-role", var.cluster_name, var.service_name)

  assume_role_policy = jsonencode(
    {
      Version = "2012-10-17",
      Statement = [
        {
          Action = "sts:AssumeRole",
          Principal = {
            Service = "ecs-tasks.amazonaws.com"
          },
          Effect = "Allow",
          Sid    = ""
        },
      ]
    }
  )

}

resource "aws_iam_role_policy" "service_execution_role" {
  name = format("%s-service-policy", var.service_name)
  role = aws_iam_role.service_execution_role.id

  policy = jsonencode({

    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "ecr:GetAuthorizationToken",
          "ecr:BatchCheckLayerAvailability",
          "ecr:GetDownloadUrlForLayer",
          "ecr:BatchGetImage",
          "logs:CreateLogStream",
          "logs:PutLogEvents",
          "elasticloadbalancing:DeregisterInstancesFromLoadBalancer",
          "elasticloadbalancing:DeregisterTargets",
          "elasticloadbalancing:DescribeListenerCertificates",
          "elasticloadbalancing:Describe*",
          "elasticloadbalancing:RegisterInstancesWithLoadBalancer",
          "elasticloadbalancing:RegisterTargets",
          "ec2:Describe*",
          "ec2:AuthorizeSecurityGroupIngress",
          "ec2:RevokeSecurityGroupIngress",
          "ec2:CreateSecurityGroup",
          "ec2:DeleteSecurityGroup",
          "ec2:CreateTags",
          "ec2:ModifyInstanceAttribute",
          "ec2:DescribeSecurityGroups",
          "ecr:putImage",
          "ecr:InitiateLayerUpload",

        ],
        Resource = "*",
        Effect   = "Allow"
      },
    ]
    }
  )
}