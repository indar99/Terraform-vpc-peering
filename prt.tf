resource "aws_route_table" "prt" {
  vpc_id = "${aws_vpc.myvpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }


  tags = {
    Name = "prt"
  }
}

resource "aws_route_table" "prt2" {
  vpc_id = "${aws_vpc.myvpc2.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw2.id}"
  }


  tags = {
    Name = "prt2"
  }
}
