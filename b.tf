resource "aws_instance" "rendered_tags" {
  ami           = "some-ami"
  instance_type = "t3.micro"

  tags = merge(var.tags, {
    yor_name  = "rendered_tags"
    yor_trace = "50fe3ea3-477a-4275-8d75-9f08aef822ff"
  })
  
  
}