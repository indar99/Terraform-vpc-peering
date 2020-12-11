resource "aws_route" "prt2-peer" {
  route_table_id            = "${aws_route_table.prt2.id}"
  destination_cidr_block    = "${var.vpc_cidr}"
  vpc_peering_connection_id = "${aws_vpc_peering_connection.myvpcpeer.id}"
}
