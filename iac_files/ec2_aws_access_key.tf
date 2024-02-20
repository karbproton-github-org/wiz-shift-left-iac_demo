resource "aws_instance" "web_host" {
  # ec2 have plain text secrets in user data
  ami           = "${var.ami}"
  instance_type = "t2.nano"

  vpc_security_group_ids = [
  "${aws_security_group.web-node.id}"]
  subnet_id = "${aws_subnet.web_subnet.id}"
  user_data = <<EOF
#! /bin/bash
export AWS_ACCESS_KEY_ID=AKIAQWERTYUIOPQQMAAA
export AWS_SECRET_ACCESS_KEY=wJalQWERTYUIOPQWERTYUIOPQWERTYUIOPQWAKEY
EOF
  tags = merge({
    Name = "${local.resource_prefix.value}-ec2"
    }, {
    git_commit           = "d68d2897add9bc2203a5ed0632a5cdd8ff8cefb0"
  })
}