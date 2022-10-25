variable "nfs_disk_size" {
  default = 30
}

variable "flavors" {
  type = map
  default = {
    "central-manager" = "m1.medium"
    "nfs-server" = "m1.medium"
    "exec-node" = "m1.medium"
    "gpu-node" = "m1.medium"
  }
}

variable "exec_node_count" {
  default = 2
}

variable "gpu_node_count" {
  default = 0
}

variable "image" {
  type = map
  default = {
    "name" = "vggp-v60-j326-d1dfcf46c4cd-main"
    "image_source_url" = "https://usegalaxy.eu/static/vgcn/vggp-v60-j326-d1dfcf46c4cd-main.raw"
    "container_format" = "bare"
    "disk_format" = "raw"
   }
}

variable "public_key" {
  type = map
  default = {
    name = "my_cloud_key"
    pubkey = "xxxxxxxxxxxxxxxx"
  }
}

variable "name_prefix" {
  default = "vgcn-"
}

variable "name_suffix" {
  default = ".pulsar"
}

variable "secgroups_cm" {
  type = list
  default = [
    "public-ssh",
    "ingress-private",
    "egress-public",
  ]
}

variable "secgroups" {
  type = list
  default = [
    "ingress-private",
    "egress-public",
  ]
}

variable "public_network" {
  default  = "public"
}

variable "private_network" {
  type = map
  default  = {
    name = "vgcn-private"
    subnet_name = "vgcn-private-subnet"
    cidr4 = "192.168.199.0/24"
  }
}

variable "ssh-port" {
  default = "22"
}
