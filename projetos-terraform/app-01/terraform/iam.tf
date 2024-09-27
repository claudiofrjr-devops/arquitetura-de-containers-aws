resource "aws_iam_role" "task_execution_role" {
  name = format("%s-%s-task-role", var.cluster_name, var.service_name)

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


resource "aws_iam_role_policy" "ecs_task_execution_policy" {

  name = format("%s-task-policy", var.service_name)
  role = aws_iam_role.task_execution_role.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "logs:CreateLogStream",
          "logs:PutLogEvents",
          "logs:CreateLogGroup",
          "ecr:GetAuthorizationToken",
          "ecr:BatchCheckLayerAvailability",
          "ecr:GetDownloadUrlForLayer",
          "s3:GetObject",
          "sqs:*"
        ],
        Resource = "*",
        Effect   = "Allow"
      },
    ]
  })
}