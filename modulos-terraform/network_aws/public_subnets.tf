
## SUBNETS ##
#############
resource "aws_subnet" "public_subnet_1a" {
  vpc_id = aws_vpc.main.id

  cidr_block        = "10.0.48.0/24"
  availability_zone = format("%s%s", var.region, "a")

  tags = {
    Name = format("%s%s", var.project_name, "-public-subnet-1a")
  }

}

resource "aws_subnet" "public_subnet_1b" {
  vpc_id = aws_vpc.main.id

  cidr_block        = "10.0.49.0/24"
  availability_zone = format("%s%s", var.region, "b")

  tags = {
    Name = format("%s%s", var.project_name, "-public-subnet-1b")
  }

}

resource "aws_subnet" "public_subnet_1c" {
  vpc_id = aws_vpc.main.id

  cidr_block        = "10.0.50.0/24"
  availability_zone = format("%s%s", var.region, "c")

  tags = {
    Name = format("%s%s", var.project_name, "-public-subnet-1c")
  }

}

## ROute Table ##
################
resource "aws_route_table" "public_internet_access" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = format("%s%s", var.project_name, "-public-internet")
  }
}

resource "aws_route" "public_access_to_internet" {
  route_table_id         = aws_route_table.public_internet_access.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.main.id

}

resource "aws_route_table_association" "public_subnet_1a_association" {
  subnet_id      = aws_subnet.public_subnet_1a.id
  route_table_id = aws_route_table.public_internet_access.id

}

resource "aws_route_table_association" "public_subnet_1b_association" {
  subnet_id      = aws_subnet.public_subnet_1b.id
  route_table_id = aws_route_table.public_internet_access.id

}

resource "aws_route_table_association" "public_subnet_1c_association" {
  subnet_id      = aws_subnet.public_subnet_1c.id
  route_table_id = aws_route_table.public_internet_access.id

}