output "seguritygroup"{
	value = "${aws_security_group.sgwordpress.id}"
}
output "vpc_id"{
	value = "${aws_vpc.example.id}"
}
output "subnetsid"{
	value = "${aws_subnet.subnet-1.id} , ${aws_subnet.subnet-2.id} , ${aws_subnet.subnet-3.id} , ${aws_subnet.subnet-4.id} , ${aws_subnet.subnet-5.id} , ${aws_subnet.subnet-6.id}"
}
output "instancesid"{
	value = "${aws_instance.WordPress.id} , ${aws_instance.WordPress1.id} , ${aws_instance.Wildfly.id} , ${aws_instance.Wildfly1.id}"
}