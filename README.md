# Docker-Python

- [The Ultimate Docker CheatSheet For Everyone](https://blog.cloudnativefolks.org/the-ultimate-docker-cheatsheet-for-everyone)
- [Jupyter Docker Stacks](https://github.com/jupyter/docker-stacks)

## Pulling the image from Docker Hub
```shell
docker pull jupyter/base-notebook:python-3.9.13
```

## Building your own image
```shell
docker build --tag ${DOCKER_USERNAME}/${APPLICATION_NAME}:$(VERSION) . # dot means currently directory
```

## Executing
```shell
docker run -it --rm -p 8888:8888 -v $(PWD):/app ${DOCKER_USERNAME}/${APPLICATION_NAME}:$(VERSION)
```

## Pushing the image to Docker Hub
```shell
docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}:$(VERSION)
```