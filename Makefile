BUILDDIR=build
ROLES=$(wildcard roles/*/.)
VERSION=0.3


help:
	@echo ' '
	@echo 'Usage: '
	@echo '   make lint                        run lint checks '
	@echo '   make tests                       run tests '
	@echo '   make container NAME=<name>       create container '
	@echo ' '


.mkbuilddir:
	mkdir -p ${BUILDDIR}


lint:
	cd extensions && pipenv run molecule lint


syntax:
	cd extensions && pipenv run molecule syntax


tests:
	cd extensions && pipenv run molecule test --destroy=never

container:
	podman rm ${NAME}-ubuntu-22.04
	podman run -d --tmpfs=/run --tmpfs=/tmp \
	    -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
	    --cap-add=SYS_ADMIN \
	    --name=${NAME}-ubuntu-22.04 \
	    geerlingguy/docker-ubuntu2004-ansible \
	    /lib/systemd/systemd
