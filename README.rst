Bayete - Roles
--------------

Ansible roles used to install software

Manually Create Podman Image
============================

podman run -d --tmpfs=/run --tmpfs=/tmp -v /sys/fs/cgroup:/sys/fs/cgroup:ro --cap-add=SYS_ADMIN --name=<name>-ubuntu-20.04 geerlingguy/docker-ubuntu2004-ansible /lib/systemd/systemd
