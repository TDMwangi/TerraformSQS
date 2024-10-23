resource "aws_sqs_queue" "sqs_queue" {
  name                       = var.name
  visibility_timeout_seconds = var.visibility_timeout
  message_retention_seconds  = var.message_retention
  delay_seconds              = var.delivery_delay
  max_message_size           = var.max_message_size
  receive_wait_time_seconds  = var.wait_time

  sqs_managed_sse_enabled = var.enable-server-side-encryption
}

data "aws_iam_policy_document" "sqs_policy_document" {
  statement {
    effect = "Allow"

    principals {
      type        = "*"
      identifiers = ["*"]
    }

    actions   = ["SQS:*"]
    resources = [aws_sqs_queue.sqs_queue.arn]
  }
}

resource "aws_sqs_queue_policy" "sqs_queue_policy" {
  queue_url = aws_sqs_queue.sqs_queue.id
  policy    = data.aws_iam_policy_document.sqs_policy_document.json
}
