provider "aws" {
	region = "us-west-2"
}

resource "aws_vpc" "demo" {
	cidr_block = "10.0.0.0/16"

	tags {
		Name = "Demo VPC"
	}
}

resource "aws_subnet" "public" {
	vpc_id = "${aws_vpc.demo.id}"
	cidr_block = "10.0.1.0/24"
	map_public_ip_on_launch = true

	tags {
		Name = "Demo VPC Public"
	}
}

resource "aws_subnet" "private" {
	vpc_id = "${aws_vpc.demo.id}"
	cidr_block = "10.0.2.0/24"

	tags {
		Name = "Demo VPC Public"
	}
}
