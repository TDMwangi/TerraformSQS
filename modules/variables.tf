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

variable "delivery_delay" {
  description = "The time delivery of all messages in the queue will be delayed. The default is 0 seconds"
  type        = number
}

variable "max_message_size" {
  description = "How many bytes a message can contain before SQS rejects it. The default is 262144 (256 KiB)"
  type        = number
}

variable "wait_time" {
  description = "The time for which a ReceiveMessage call will wait for a message to arrive. The default is 0 seconds"
  type        = number
}
