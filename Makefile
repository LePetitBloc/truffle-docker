DOCKER_COMPOSE = docker-compose

##
##Project
##-------
##

build:
	$(DOCKER_COMPOSE) up -d --build --force-recreate

kill:
	$(DOCKER_COMPOSE) stop
	$(DOCKER_COMPOSE) rm -f
	$(DOCKER_COMPOSE) down --volumes --remove-orphans

install: ## Install and start the project
install: build start

reset: ## Stop and start a fresh install of the project
reset: kill install

start: ## Start the project
	$(DOCKER_COMPOSE) start

stop: ## Stop the project
	$(DOCKER_COMPOSE) stop

no-docker:
	$(eval DOCKER_COMPOSE := \#)

compile: ## Truffle compilation
compile:
	$(DOCKER_COMPOSE) exec truffle truffle compile

migrate: ## Truffle migration
migrate:
	$(DOCKER_COMPOSE) exec truffle truffle migrate

console: ## Run the interactive truffle console
	$(DOCKER_COMPOSE) exec truffle truffle console

.PHONY: kill install reset start stop clean no-docker

.DEFAULT_GOAL := help
help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'
.PHONY: help
