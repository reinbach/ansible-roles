resource "digitalocean_droplet" "<code>" {
  image = "ubuntu-16-04-x64"
  name = "<code>"
  region = "${var.region}"
  size = "${var.psql_size}"
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
        # install postgresql
        "sudo apt-get update",
        "sudo apt-get -y install postgresql nscd"
        # nscd caches name service requests,
        # better performance using domain in hba entries
        # rest of steps to setup
        # database
      ]
    }
  }
}
