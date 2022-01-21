DOCKER = docker compose exec
BACKEND = php
FRONT = node

install:
	$(DOCKER) $(BACKEND) composer install
update:
	$(DOCKER) $(BACKEND) composer update
%:
	$(DOCKER) $(BACKEND) php bin/console make:$@
watch:
	$(DOCKER) $(FRONT) yarn encore dev --watch

	