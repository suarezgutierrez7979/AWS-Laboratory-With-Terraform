resource "aws_internet_gateway" "gw" {
    vpc_id = "${aws_vpc.example.id}"
  tags = {
    Name = "Internet-gateway-reto"
  }
}

resource "aws_route_table" "webPublic" {
    vpc_id = "${aws_vpc.example.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
  tags = {
    Name = "Route-Public"
  }
}

resource "aws_route_table_association" "webPublica" {
    subnet_id = "${aws_subnet.subnet-1.id}"
    route_table_id="${aws_route_table.webPublic.id}"
  }
