variable "authentication" {
  type = object({
    assume_role_arn = string
    region          = string
  })

  default = {
    assume_role_arn = "arn:aws:iam::585008060212:role/LiveMiniCursoDevOpsAWSRole"
    region          = "us-west-1"
  }
}

variable "tags" {
  type = map(string)
  default = {
    Environment = "production"
    Project     = "live-minicurso-devops-aws"
  }
}

variable "queue" {
  type = list(object({
    name                      = string
    delay_seconds             = number
    max_message_size          = number
    message_retention_seconds = number
    receive_wait_time_seconds = number
  }))
  default = [{
    name                      = "live-minicurso-devops-aws-queue-01"
    delay_seconds             = 90
    max_message_size          = 2048
    message_retention_seconds = 86400
    receive_wait_time_seconds = 10
  },{
    name                      = "live-minicurso-devops-aws-queue-02"
    delay_seconds             = 90
    max_message_size          = 2048
    message_retention_seconds = 86400
    receive_wait_time_seconds = 10
  }]
}
