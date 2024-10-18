resource "aws_sqs_queue" "sqs_queue" {
  name                       = var.name
  visibility_timeout_seconds = var.visibility_timeout
  message_retention_seconds  = var.message_retention
  delay_seconds              = var.delivery_delay
  max_message_size           = var.max_message_size
  receive_wait_time_seconds  = var.wait_time
}
