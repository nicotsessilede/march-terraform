variable "bucket_name" {
  default     = "example-bucket-nico"
  description = " Name of the S3 buckets"
  type        = string
}

variable "s3_folder_name" {
  description = "Store the name of primary folder in s3"
  default     = "uploads/"
  type        = string
}

variable "s3_visioning_status" {
  description = "Keeps the state of visioning of s3 bucket"
  default     = "Enabled"
  type        = string

}

variable "ec2_ami" {
  description = "stores the id of ec2 ami"
  type        = string
  default     = "ami-07761f3ae34c4478d"
}
variable "ec2_name" {
  description = "stores ec instance's name"
  type        = string
  default     = "amazon-linux-2"

}
variable "ec2_type" {
  description = "stores ec instance's type"
  type        = string
  default     = "t3.micro"

}
variable "each_bucket" {
  description = " all bucket name"
  type        = map(any)
  default = {
    "uat" = { name = "example-bucket-nico-uat", tag = "example-bucket-nico-uat" },
    "dev" = { name = "example-bucket-nico-dev", tag = "example-bucket-nico-dev" }
  }
}
variable "name" {
  type        = map(string)
  description = "(optional) describe your variable"
  default = {
    key1 = "val1"
    key2 = "val2"
  }
}

variable "vpc_cidr" {
  type        = list(any)
  description = "cidr blocks for vpc"
  default     = ["10.0.0.0/16", "10.0.1.0/24"]
}