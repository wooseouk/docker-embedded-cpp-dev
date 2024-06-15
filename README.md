# Embedded CPP Dev
Provides a complete development environment for use in Cortex M development

## Description
A docker container that can be built with command line tools that sets up all that is
needed to bring up a development environment quickly.

Includes:
- arm-none-eabi v13.2
- make
- cmake

## Getting Started
Assumes that you have a working installation of docker and have basic knowledge of how to use docker.
If you are using Windows ensure that WSL 2 is installed as this creates a linux container.

### Build
```
docker build --tag={container-name} .
```
Where container-name = name of container you'd like to use

### Start the container
```
docker run --name={container-name} --rm -it {instance-name}
```
Where:
- container-name = name of the container you used in the build step
- instance-name = name of the container that is launched

Note that when the container is launched you'll be pulled into it when it is run in the manner.  In order to launch the container add the -d tag
```
docker run --name={container-name} --rm -it -d {instance-name}
```

To connect to the container use
```
docker exec -it {instance-name} /bin/bash
```
This connects to the container and launches bash so that you can interact with the container

## Suggested usage
**This section needs a lot of work.**
Need to read: https://code.visualstudio.com/docs/containers/overview

I haven't tried it yet.
I recommend binding to the following folders:
- /work for your code base
- /.vscode for your vscode instance

Remember that without binding volumes every time the container is launched it is a blank slate.

### Bind source code

### Bind vscode

## Authors
Roque Obusan - [Email](mailto://roque@obusan.me)