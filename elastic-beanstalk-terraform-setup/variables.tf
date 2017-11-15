variable "vpc_id" {
    description = "ID of the VPC to use"
    default = "vpc-7420b012"
}

variable "vpc_cidr" {
    description = "Internal IP range, allowed to ssh to instances"
    default = "172.31.0.0/16"
}

variable "private_subnet_one" {
    description = "ID of first subnet for EC2-instances"
    default = "subnet-be2a6393"
}
variable "private_subnet_two" {
    description = "ID of second subnet for EC2-instances"
    default = "subnet-09d09452"
}

variable "subnet_one" {
    description = "ID of first subnet for Load balancer"
    default = "subnet-be2a6393"
}
variable "subnet_two" {
    description = "ID of second subnet for Load balancer"
    default = "subnet-09d09452"
}

variable "ssh_key" {
    description = "ID of key pair that will be granted SSH access to the servers"
    default = "ebs"
}

variable "healthcheck_location" {
    # default TCP:22 since application might not actually be running (it's new after all)
    default = "TCP:22"
    description = "Location for Load balancer to check for response to see if instances in autoscaling group are healthy"
}

variable "instance_type" {
    description = "Which AWS instance type (e.g. t2.micro) to start up ec2-nodes on"
    default = "t2.micro"
}

variable "loadbalancing_desired_nodes" {
    default = 2
    description = "Desired amount of nodes in autoscaling group"
}  

variable "loadbalancing_min_nodes" {
    default = 2
    description = "Minimum amount of nodes in autoscaling group"
}
variable "loadbalancing_max_nodes" {
    default = 2
    description = "Maximum amount of nodes in autoscaling group"
}
