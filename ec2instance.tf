resource "aws_instance" "prometheus" {
    ami = "ami-0df7a207adb9748c7"
    instance_type = "t2.micro"
    key_name = "tf_key"

    tags = {
        Name = "Prometheus"
    }
}

resource "aws_instance" "Grafana" {
    ami = "ami-0df7a207adb9748c7"
    instance_type = "t2.micro"
    key_name = "tf_key"

    tags = {
        Name = "Grafana"
    }
}

resource "aws_instance" "linuxserver" {
    ami = "ami-0df7a207adb9748c7"
    instance_type = "t2.micro"
    key_name = "tf_key"

    tags = {
        Name = "linuxserver"
    }
}

data "aws_vpc" "default_vpc"{
  default = true
}

data "aws_subnet_ids" "default_vpc"{
  vpc_id = data.aws_vpc.default_vpc.id
}
