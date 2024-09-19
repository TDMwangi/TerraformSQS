variable "name" {
  description = "The name of the queue"
  type        = string
}

variable "visibility_timeout" {
  description = "The visibility timeout for the queue. The default is 30 seconds"
  type        = number
}
