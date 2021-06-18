DOCKER_FILE = Dockerfile
COMPOSE_FILE = docker-compose.yml
IMAGE_TAG = diagnose1:latest

img:
	docker build --no-cache -f $(DOCKER_FILE) -t $(IMAGE_TAG) . 

run:
	docker-compose -f $(COMPOSE_FILE) up -d

stop:
	docker-compose -f $(COMPOSE_FILE) down

rmi:
	docker rmi $(IMAGE_TAG)


.PHONY: image rmi start stop
