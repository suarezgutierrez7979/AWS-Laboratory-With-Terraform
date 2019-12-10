#creacion  de las instancias wordpress
resource "aws_instance" "WordPress" {  
    ami           = "${var.ami_id_worpress}"
    instance_type = "${var.instance_type}"
    subnet_id = "${aws_subnet.subnet-1.id}"
    security_groups = ["${aws_security_group.sgwordpress.id}"]
 tags = {
    Name = "Wordpress"
  }
}

resource "aws_instance" "WordPress1" {  
    ami           = "${var.ami_id_worpress}"
    instance_type = "${var.instance_type}"
    subnet_id = "${aws_subnet.subnet-3.id}"
    security_groups = ["${aws_security_group.sgwordpress.id}"]
  tags = {
    Name = "Wordpress1"
  }
}

#creacion  de las instancias wildfly
resource "aws_instance" "Wildfly" {  
    ami           = "${var.ami_id_wildfly}"
    instance_type = "${var.instance_type}"
    subnet_id = "${aws_subnet.subnet-2.id}"
    security_groups = ["${aws_security_group.sgwildfly.id}"]
  tags = {
    Name = "wildfly"
  }
}

resource "aws_instance" "Wildfly1" {  
    ami           = "${var.ami_id_wildfly}"
    instance_type = "${var.instance_type}"
    subnet_id = "${aws_subnet.subnet-4.id}"
    security_groups = ["${aws_security_group.sgwildfly.id}"]
  tags = {
    Name = "Widfly1"
  }
}
