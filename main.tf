# IAM ROLE
resource "aws_iam_role" "IAMRole" {
  name = var.role-name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "${var.CyberqArn}"
            },
            "Action": "sts:AssumeRole",
            "Condition": {
                "StringEquals": {
                    "sts:ExternalId": var.ExternalId
                }
            }
        }
    ]
})
}


resource "aws_iam_role_policy_attachment" "SecurityAudit-attach" {
  role       = aws_iam_role.IAMRole.name
  policy_arn = "arn:aws:iam::aws:policy/SecurityAudit"
}

resource "aws_iam_role_policy_attachment" "AWSElasticBeanstalkReadOnly-attach" {
  role       = aws_iam_role.IAMRole.name
  policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkReadOnly"
}

resource "aws_iam_role_policy_attachment" "AmazonDynamoDBReadOnlyAccess-attach" {
  role       = aws_iam_role.IAMRole.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBReadOnlyAccess"
}

resource "aws_iam_role_policy_attachment" "AmazonSNSReadOnlyAccess-attach" {
  role       = aws_iam_role.IAMRole.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSNSReadOnlyAccess"
}

resource "aws_iam_role_policy_attachment" "AmazonEMRReadOnlyAccessPolicy_v2-attach" {
  role       = aws_iam_role.IAMRole.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEMRReadOnlyAccessPolicy_v2"
}
