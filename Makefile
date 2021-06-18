DOCKER_FILE = Dockerfile.full
DOCKER_FILE_MINIMAL = Dockerfile.minimal
COMPOSE_FILE = docker-compose.yml
IMAGE_TAG = diagnose1:latest

buildf:
	docker build --no-cache -f $(DOCKER_FILE) -t $(IMAGE_TAG) . 

buildm:
	docker build --no-cache -f $(DOCKER_FILE_MINIMAL) -t $(IMAGE_TAG) . 

up:
	docker-compose -f $(COMPOSE_FILE) up -d

down:
	docker-compose -f $(COMPOSE_FILE) down

clean:
	docker rmi $(IMAGE_TAG)


.PHONY: buildf buildm up down clean
