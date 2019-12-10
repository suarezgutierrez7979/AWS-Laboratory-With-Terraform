#Security group wordpress

resource "aws_security_group" "sgwordpress" {
    name        = "wordpress"
    description = "public"
    vpc_id      = "${aws_vpc.example.id}"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"  //protocolo de control de transmision
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port       = 80
    to_port         = 8080
    protocol    = "tcp"
    cidr_blocks     = ["192.168.0.32/27" , "192.168.0.96/27"]
  }
}

#security group wildfly

resource "aws_security_group" "sgwildfly" {
    name        = "wildfly"
    vpc_id      = "${aws_vpc.example.id}"
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["192.168.0.0/27" , "192.168.0.64/27"]
  }
  egress {
    from_port       = 3306
    to_port         = 3306
    protocol    = "tcp"
     cidr_blocks = ["192.168.0.32/27" , "192.168.0.96/27"]
  }
}

#security group rds
resource "aws_security_group" "sgrds" {
    name        = "sgrds"
    vpc_id      = "${aws_vpc.example.id}"
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["192.168.0.32/27" , "192.168.0.96/27"]
  }
  egress {
    from_port       = 3306
    to_port         = 3306
    protocol    = "tcp"
     cidr_blocks = ["192.168.0.32/27" , "192.168.0.96/27"]
  }
}

