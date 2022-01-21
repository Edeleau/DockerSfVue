DOCKER = docker compose exec
BACKEND = php
FRONT = node

install:
	$(DOCKER) $(BACKEND) composer install
update:
	$(DOCKER) $(BACKEND) composer update
%:
	$(DOCKER) $(BACKEND) php bin/console make:$@
migrate:
	$(DOCKER) $(BACKEND) php bin/console doctrine:migrations:migrate
watch:
	$(DOCKER) $(FRONT) yarn encore dev --watch
up:
	$(DOCKER) compose up -d
init:
	docker compose run --rm --no-deps $(FRONT) bash -ci 'yarn install'
	docker compose up -d
	make install