# Docker-Python

- [The Ultimate Docker CheatSheet For Everyone](https://blog.cloudnativefolks.org/the-ultimate-docker-cheatsheet-for-everyone)

## Pulling the image from Docker Hub
```shell
docker pull python:3.9.18-slim
```

## Building your own image
```shell
docker build --tag ${DOCKER_USERNAME}/${APPLICATION_NAME}:$(VERSION) . # dot means currently directory
```

## Executing
In this version, when you run this Docker image, it will automatically launch Jupyterlab

```shell
docker run -it --rm -v $(PWD):/app ${DOCKER_USERNAME}/${APPLICATION_NAME}:$(VERSION)
```

## Pushing the image to Docker Hub
```shell
docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}:$(VERSION)
```