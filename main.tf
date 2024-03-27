
resource "aws_instance" "this" {
  ami = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"
  user_data = file("tomcat_install.sh")
  tags = {
    Name = "tomcat"
  }
}