resource "aws_vpc" "main-vpc" {
  cidr_block = var.vpc_cidr[0]

  tags = local.common_tags
}

resource "aws_subnet" "main-subnet" {
  vpc_id     = aws_vpc.main-vpc.id
  cidr_block = var.vpc_cidr[1]

  tags       = local.common_tags
  depends_on = [aws_vpc.main-vpc]
}

resource "aws_internet_gateway" "main-gw" {
  vpc_id = aws_vpc.main-vpc.id

  tags = local.common_tags
  depends_on = [ aws_vpc.main-vpc ]
}