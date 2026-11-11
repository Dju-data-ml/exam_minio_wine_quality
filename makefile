.PHONY: tests start build stop pipeline all clean

# Colors
GREEN  := $(shell tput -Txterm setaf 2)
YELLOW := $(shell tput -Txterm setaf 3)
WHITE  := $(shell tput -Txterm setaf 7)
RESET  := $(shell tput -Txterm sgr0)

build: ## build les conteneurs
	docker compose build

start: ## démarre les conteneurs
	docker compose up -d

stop: ## stop les conteneurs
	docker compose down

tests: ## lance les tests
	docker compose up --no-deps tests

pipeline: ## lance le pipeline seul
	docker compose run --rm pipeline

all: tests

clean:
	docker compose down -v --remove-orphans

help: ## Show this help
	@echo 'Usage: make ${YELLOW}<target>${RESET}'
	@echo 'Targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  ${YELLOW}%-15s${RESET} %s\n", $$1, $$2}' $(MAKEFILE_LIST)