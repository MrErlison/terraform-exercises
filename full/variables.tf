
variable "permission" {
  type    = number
  default = 0700
}

variable "path" {
  type    = string
  default = "/Users/erlison/Documents/Github/MrErlison/terraform-exercises"
}

variable "name" {
  type    = string
  default = "file"
}

variable "message" {
  type    = string
  default = "It's time for innovative ideas.\n"
}

variable "length" {
  type    = number
  default = 10
}