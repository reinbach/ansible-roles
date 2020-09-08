BUILDDIR=build
ROLES=$(wildcard roles/*/.)
VERSION=0.3


help:
	@echo '                                                    '
	@echo 'Usage:                                              '
	@echo '   make lint                        run lint checks '
	@echo '   make test                        run tests       '
	@echo '                                                    '


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

test:
	@for d in ${ROLES} ; \
	do \
		cd $$d && molecule test && cd ${PWD}; \
	done;
