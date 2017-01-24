## angular-cli / ng-dygraphs docker image
docker image using angular-cli to set up a project with [ng-dygraphs](https://www.npmjs.com/package/ng-dygraphs).
Thanks to Ivan Stepic for his module an his support.

### start the container

```
docker run -t --rm ludwigprager/ng-dygraph-cli:0.1
```

This will start the server implicitly.
Stop the container with ctrl-c. (That's why option '-i' is omitted, would prevent the container to be cancelled)

### start the container only
You need ti issue the 'ng serve' command manually in the shell.

```
docker run -it --rm ludwigprager/ng-dygraph-cli:0.1 /bin/bash
```

### build the image yourself

```
docker build -t ludwigprager/ng-dygraph-cli:0.1 .
```
