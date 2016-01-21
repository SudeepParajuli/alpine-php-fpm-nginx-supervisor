## Short Description

This image is based on alpine:latest base image .

## Full Description

As the image is based on alpine base image the size of image is around 70 mb .we can have the overview of image size here https://imagelayers.io/?images=sudeep254%2Falpine-php-nginx-supervisor:latest
we have used supervisor to make php-fpm and nginx process running.

## Running the container :
#### we can run the container using :
```
docker run  sudeep254/alpine-php-nginx-supervisor

```
If we want to enter inside the container and modify certain things we could use ``` docker exec ``` command.
```
docker exec -it  <container-name or container id> /bin/sh

```
After entering inside the container using ``` docker exec ``` command , we can use ``` supervisorctl ``` command to see the list of process managed by supervisor . Here we are managing nginx and php-fpm through supervisor.
