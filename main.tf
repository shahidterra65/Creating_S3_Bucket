resource "aws_s3_bucket" "mybucket" { 
bucket = "my-unique-bucket-namethatwearedoingnewpractice33" 
} 

resource "aws_instance" "web" {
  ami           = var.os
  instance_type = var.Size
  count = var.counts
  tags = {
    Name = var.Name
  }
}
variable "os" {
  description = "this default ami is for us-east-1 region"
  type        = string
  default     = "ami-0e449927258d45bc4"
}
variable "Size" {
  default = "t2.micro"

}
variable "Name" {
default = "SonarQube"
}
variable "counts" {
 default = 1

}