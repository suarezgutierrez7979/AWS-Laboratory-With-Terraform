#creacion de las elb
resource "aws_elb" "elbwordpress" {
    name               = "elbwordpress"
    subnets  =  ["${aws_subnet.subnet-1.id}" , "${aws_subnet.subnet-3.id}" ]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
    instances                   = ["${aws_instance.WordPress.id}" , "${aws_instance.WordPress1.id}"]
    cross_zone_load_balancing   = true
    idle_timeout                = 400
    connection_draining         = true
    connection_draining_timeout = 400
  tags = {
    Name = "ELB-Wordpress"
  }
}


resource "aws_elb" "elbwildfly" {
    name               = "elbwildfly"
    subnets  =  ["${aws_subnet.subnet-2.id}" , "${aws_subnet.subnet-4.id}" ]
 
  listener {
    instance_port     = 8080
    instance_protocol = "http"
    lb_port           = 8080
    lb_protocol       = "http"
  }
    instances                   = ["${aws_instance.Wildfly.id}" , "${aws_instance.Wildfly1.id}"]
    cross_zone_load_balancing   = true
    idle_timeout                = 400
    connection_draining         = true
    connection_draining_timeout = 400
  tags = {
    Name = "ELB-Wildfly"
  }
}