resource "aws_db_subnet_group" "subrrds" {
    name       = "subnet-groupp"
  subnet_ids = ["${aws_subnet.subnet-5.id}" , "${aws_subnet.subnet-6.id}" ]
   tags = {
    Name = "Expertic"
  }
}

#creacion de rds

resource "aws_db_instance" "mysql" {

  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7.22"
  instance_class       = "db.m4.large"
  name                 = "mydb"
  username             = "proyecto"
  password             = "proyecto123"
  identifier           = "mysql" 
  backup_retention_period = 1
  multi_az            = "true"
  maintenance_window = "Mon:00:00-Mon:03:00"
  backup_window      = "03:00-06:00"
  vpc_security_group_ids = ["${aws_security_group.sgrds.id}"]
  db_subnet_group_name  = "${aws_db_subnet_group.subrrds.id}"
}

#creacion replica rds

resource "aws_db_instance" "replica" {
  engine                 = "mysql"
  engine_version         = "5.7.22"
  allocated_storage    = 10
  instance_class         = "db.m4.large"
  name                   = "replicadb"
  identifier            = "bdreplica" 
  availability_zone      = "us-east-1b"
  backup_retention_period = 0
  maintenance_window    = "Mon:00:00-Mon:03:00"
  backup_window           = "03:00-06:00"
  replicate_source_db       = "${aws_db_instance.mysql.identifier}"
  vpc_security_group_ids   = ["${aws_security_group.sgrds.id}"]

}