resource "digitalocean_droplet" "<code>" {
  image = "ubuntu-16-04-x64"
  name = "<code>"
  region = "${var.region}"
  size = "${var.www_size}"
  private_networking = true
  ssh_keys = [
    "${var.ssh_fingerprint}"
  ]

  connection {
    user = "root"
    type = "ssh"
    private_key = "${file(var.pvt_key)}"
    timeout = "2m"

    provisioner "remote-exec" {
      inline = [
        "export PATH=$PATH:/usr/bin",
        # install nginx
        "sudo apt-get update"
      ]
    }
  }
}
