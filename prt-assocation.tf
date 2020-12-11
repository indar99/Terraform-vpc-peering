resource "aws_route_table_association" "prt-associate-sub" {
  subnet_id      = "${aws_subnet.pubsub.id}"
  route_table_id = "${aws_route_table.prt.id}"
}

resource "aws_route_table_association" "prt-associate-sub2" {
  subnet_id      = "${aws_subnet.pubsub2.id}"
  route_table_id = "${aws_route_table.prt2.id}"
}

