provider "virtualbox" {}

resource "virtualbox_vm" "k8s_nodes" {
  count = 3
  name  = "k8s-node-${count.index}"
  image = "ubuntu/bionic64"
  cpus  = 2
  memory = 2048
  network_adapter {
    type           = "hostonly"
    host_interface = "vboxnet0"
  }
}
