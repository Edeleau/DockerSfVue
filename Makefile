DOCKER = docker compose exec

install:
	$(DOCKER) php composer install
update:
	$(DOCKER) php composer update
%:
	$(DOCKER) php php bin/console make:$@
watch:
	$(DOCKER) node yarn encore dev --watch

	