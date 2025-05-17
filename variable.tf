variable "os" {
  description = "this default ami is for us-east-1 region"
  type        = string
  default     = "ami-0e449927258d45bc4"
}
variable "Size" {
  default = "t2.micro"

}
variable "Name" {
default = "SonarQubeServer"
}
variable "counts" {
 default = 1

}