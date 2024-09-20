variable "name" {
  description = "The name of the queue"
  type        = string
}

variable "visibility_timeout" {
  description = "The visibility timeout for the queue. The default is 30 seconds"
  type        = number
}

variable "message_retention" {
  description = "The number of seconds SQS retains a message. The default is 345600 (4 days)"
  type        = number
}
