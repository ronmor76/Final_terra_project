resource "aws_instance" "ec2" {
   ## ami = data.aws_ami.ubunto.id
    ami = "ami-0ecb62995f68bb549"
    instance_type = var.ec2_type
  
}