resource "aws_key_pair" "test-key" {
  key_name   = "tf-test"
  public_key = file("tf-test.pub")
}

resource "aws_instance" "test-inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.test-key.key_name
  vpc_security_group_ids = ["sg-074ef19e42a5bdc50"]
  tags = {
    Name    = "test-Instance"
    Project = "test"
  }
  
  user_data = file("web.sh")

}

