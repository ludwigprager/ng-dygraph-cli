## angular-cli / ng-dygraphs docker image
docker image using angular-cli to set up a project with [ng-dygraphs](https://www.npmjs.com/package/ng-dygraphs).
Thanks to Ivan Stepic for his module an his support.

### start the container

```
docker run -t --rm -p 4201:4201 -p 49153:49153 ludwigprager/ng-dygraph-cli:0.1
```

This will start the server implicitly, too.
Stop the container with ctrl-c.


### start the container only

```
docker run -it --rm -p 4201:4201 -p 49153:49153 ludwigprager/ng-dygraph-cli:0.1 /bin/bash
```

Then, start the server manually:

```
ng serve --host 0.0.0.0 --port 4201 --live-reload-port 49153
```

### build the image yourself

```
docker build -t ludwigprager/ng-dygraph-cli:0.1 .
```
