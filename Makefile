DOCKER_USERNAME := hsiangjenli
APPLICATION_NAME := tutorial-python
VERSION := 2024-02-09

docker_build:
	docker build --tag ${DOCKER_USERNAME}/${APPLICATION_NAME}:$(VERSION) . # dot means currently directory

docker_run:
	# --rm means remove the container after it exits
	# -it means interactive mode
	# -v means mount the current directory to /app in the container
	docker run -it --rm -v $(PWD):/app ${DOCKER_USERNAME}/${APPLICATION_NAME}:$(VERSION) bash

docker_push:
	docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}:$(VERSION)