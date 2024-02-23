resource "aws_internet_gateway" "k8s-cluster-igw" {
  vpc_id = aws_vpc.k8s-cluster-vpc.id
  tags   = local.tags

}

resource "aws_internet_gateway_attachment" "k8s-cluster-igw-attach" {
  internet_gateway_id = aws_internet_gateway.k8s-cluster-igw.id
  vpc_id              = aws_vpc.k8s-cluster-vpc.id

}

resource "aws_vpc" "k8s-cluster-vpc" {
  cidr_block = "10.10.0.0/16"

  tags = local.tags
}

resource "aws_subnet" "k8s-cluster-public-subnet" {
  vpc_id     = aws_vpc.k8s-cluster-vpc.id
  cidr_block = "10.10.10.0/24"

  tags = local.tags
}

