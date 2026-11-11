build:
	docker compose build

start:
	docker compose up -d

tests:
	docker compose up --no-deps tests

.PHONY: tests start build