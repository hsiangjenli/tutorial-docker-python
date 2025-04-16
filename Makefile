DOCKER_USERNAME := hsiangjenli
APPLICATION_NAME := tutorial-python
VERSION := 2025-04-16-custom_entrypoint_jupyter

docker_build:
	docker build --tag ${DOCKER_USERNAME}/${APPLICATION_NAME}:$(VERSION) . # dot means currently directory

docker_run:
	# --rm means remove the container after it exits
	# -v means mount the current directory to /app in the container
	docker run -p 8888:8888 --rm -v $(PWD):/app ${DOCKER_USERNAME}/${APPLICATION_NAME}:$(VERSION)

docker_push:
	docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}:$(VERSION)