DOCKER_USERNAME := hsiangjenli
APPLICATION_NAME := tutorial-python-jupyter
VERSION := 2024-02-09

docker_build:
	docker build --tag ${DOCKER_USERNAME}/${APPLICATION_NAME}:$(VERSION) . # dot means currently directory

docker_run:
	# --rm means remove the container after it exits
	# -it means interactive mode
	# -v means mount the current directory to /app in the container
	# --no-cache 
	# if you just updated the requirements.txt
	# docker will use the cache to build the image
	# so you need to add --no-cache to force docker to rebuild the image
	docker run -it --rm -p 8888:8888 -v $(PWD):/app ${DOCKER_USERNAME}/${APPLICATION_NAME}:$(VERSION)

docker_push:
	docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}:$(VERSION)