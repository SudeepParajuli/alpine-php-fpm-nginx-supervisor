## Short Description

This image is based on alpine:latest base image .

## Full Description

As the image is based on alpine base image the size of image is around 70 mb .we can have the overview of image size here https://imagelayers.io/?images=sudeep254%2Falpine-php-nginx-supervisor:latest
we have used supervisor to make php-fpm and nginx process running.

## Steps to use the image :
 
First of all,clone the files in specific directory using :

```
git clone https://github.com/SudeepParajuli/alpine-php-fpm-nginx-supervisor.git
cd alpine-php-fpm-nginx-supervisor

```



## Building the Image :
#### Image can be  build the  using :
```
docker build -t php-fpm-nginx-supervisor:latest . 

```


##Running the container :

After the image is build,the next step is to create a container from the image.
The container can be created using :

```

docker run  --name phpfpm-nginx-supervisor -p 80:80  php-fpm-nginx-supervisor:latest

```

The container phpfpm-nginx-supervisor will be created using the image php-fpm-nginx-supervisor:latest.

If we want to enter inside the container and modify certain things we could use ``` docker exec ``` command.
```
docker exec -it  phpfpm-nginx-supervisor /bin/sh

```
After entering inside the container using ``` docker exec ``` command , we can use ``` supervisorctl ``` command to see the list of process managed by supervisor . Here we are managing nginx and php-fpm through supervisor.
