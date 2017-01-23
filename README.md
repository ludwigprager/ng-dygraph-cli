## Note: this image doesn't contain a working angular2 app. Currently, its objective is to solve the error.

## start the container and server

```
docker run -t --rm ludwigprager/ng-dygraph-cli:0.1
```

## start the container, only

```
docker run -t --rm ludwigprager/ng-dygraph-cli:0.1 /bin/bash
```
Then, issue the 'ng serve' command manually

## build the image yourself
~~

```
docker build -t ludwigprager/ng-dygraph-cli:0.1 .
```
