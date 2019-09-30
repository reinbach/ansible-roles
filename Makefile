BUILDDIR=build

help:
	@echo '                                                    '
	@echo 'Usage:                                              '
	@echo '   make lint                        run lint checks '
	@echo '   make test                        run tests       '
	@echo '                                                    '


.mkbuilddir:
	mkdir -p ${BUILDDIR}


lint:
	flake8; exit 0;
	isort; exit 0;

test:
	pytest tests/; exit 0;
