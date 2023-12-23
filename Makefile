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
	@for d in ${ROLES} ; \
	do \
		cd $$d && molecule lint && cd ${PWD}; \
	done;


syntax:
	@for d in ${ROLES} ; \
	do \
		cd $$d && molecule syntax && cd ${PWD}; \
	done;

tests:
	@for d in ${ROLES} ; \
	do \
		cd $$d && molecule test && cd ${PWD}; \
	done;


container:
	podman rm ${NAME}-ubuntu-22.04
	podman run -d --tmpfs=/run --tmpfs=/tmp \
	    -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
	    --cap-add=SYS_ADMIN \
	    --name=${NAME}-ubuntu-22.04 \
	    geerlingguy/docker-ubuntu2004-ansible \
	    /lib/systemd/systemd
