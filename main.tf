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
