variable "bucket_prefix" {
  type    = list(any)
  default = ["cap-"]
}

variable "acl" {
  type    = list(any)
  default = ["private"]
}

variable "versioning" {
  type    = list(any)
  default = [true]
}
