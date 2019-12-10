resource "aws_subnet" "subnet-1" {
   vpc_id            = "${aws_vpc.example.id}"
   cidr_block        = "192.168.0.0/27"
   availability_zone = "us-east-1a"
 tags = {
   Name = "${var.tags_subnet_publica}"
  }
}

resource "aws_subnet" "subnet-2" {
   vpc_id            = "${aws_vpc.example.id}"
   cidr_block        = "192.168.0.32/27"
   availability_zone = "us-east-1a"
  tags = {
   Name = "${var.tags_subnet_privada}"
  }
}

resource "aws_subnet" "subnet-3" {
   vpc_id            = "${aws_vpc.example.id}"
   cidr_block        = "192.168.0.64/27"
   availability_zone = "us-east-1b"
  tags = {
   Name = "${var.tags_subnet_publica}"
  }
}

resource "aws_subnet" "subnet-4" {
   vpc_id            = "${aws_vpc.example.id}"
   cidr_block        = "192.168.0.96/27"
   availability_zone = "us-east-1b"
  tags = {
   Name = "${var.tags_subnet_privada}"
  }
}
resource "aws_subnet" "subnet-5" {
   vpc_id            = "${aws_vpc.example.id}"
   cidr_block        = "192.168.0.128/27"
   availability_zone = "us-east-1a"
  tags = {
   Name = "${var.tags_subnet_privada}"
  }
}

resource "aws_subnet" "subnet-6" {
   vpc_id            = "${aws_vpc.example.id}"
   cidr_block        = "192.168.0.160/27"
   availability_zone = "us-east-1b"
  tags = {
   Name = "${var.tags_subnet_privada}"
  }
}