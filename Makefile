up:
	docker-compose -f docker/docker-compose.yml up

down:
	docker-compose -f docker/docker-compose.yml down

build:
	docker build -t syniol.dev/node:14 .
