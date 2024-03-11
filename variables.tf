
variable "cidr" {
  description = "VPC network config "
}

variable "infra-vpc-id" {
  description = "ID of existing VPC"
}

variable "sub_A_in_cidr" {
  description = "Subnet zone A internal"
}

variable "sub_B_in_cidr" {
  description = "Subnet zone B internal"
}

variable "sub_C_in_cidr" {
  description = "Subnet zone C internal"
}
variable "sub_A_pub_cidr" {
  description = "Subnet zone A public"
}

variable "sub_B_pub_cidr" {
  description = "Subnet zone B public"
}

variable "sub_C_pub_cidr" {
  description = "Subnet zone C public"
}

variable "internet_cidr" {
  description = "Internet addresses"
}

variable "gate-ip" {
  description = "VPN Server Internal IP"
}

variable "master-ip" {
  description = "Master Server Internal IP"
}

variable "registry-ip" {
  description = "Docker registry server IP"
}

variable "bakery-ip" {
  description = "Docker bakery server IP"
}

variable "kubams-ip" {
  description = "Kubernetes master server IP"
}

variable "kubbn1-ip" {
  description = "Kubernetes node zone B IP"
}

variable "kubcn1-ip" {
  description = "Kubernetes node zone C IP"
}

variable "kuban1-ip" {
  description = "Kubernetes node zone A IP"
}

variable "vol-type" {
  description = "EBS volumes type"
}

variable "spot_price" {
  default = "0.018"
  description = "Spot price"
}

variable "local_gateway_id" {
  default = "local"
}

