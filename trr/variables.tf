variable "ami" {
  type = "string"
  default = "ami-035be7bafff33b6b6"
}

variable "instance_type" {
  type = "string"
  default = "t2.micro"
}

variable "key_name" {
  type = "string"
  default = "NvirginiaKP"
}

variable "TagName" {
  type = "string"
  default = "Vyshnavi"
}

variable "Region" {
  type = "string"
  default = "us-east-1"
}
