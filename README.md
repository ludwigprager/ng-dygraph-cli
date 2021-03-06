## angular-cli / ng-dygraphs docker image
docker image for [ng-dygraphs](https://www.npmjs.com/package/ng-dygraphs) with angular-cli.
ng-dygraphs is an angular2 wrapper for [dygraphs](http://dygraphs.com).

### Why this image
I struggled to get ng-dygraphs running with angular-cli and wanted to test it in an isolated environment.
Note, that a particular version of angular-cli and ng-dygraph is specified. This should help to reproduce a running environment. Feel free to contact me whenever you think that newer versions are reasonable.

Thanks to Ivan Stepic for his module an his support.

### start the container

```
docker run -t --rm -p 4201:4200 -p 49153:49153 ludwigprager/ng-dygraph-cli:0.1
```

This will start the server implicitly, too.
Stop the container with ctrl-c.
Then, point you browser to http://172.17.0.1:4201.


### start the container only

```
docker run -it --rm -p 4201:4200 -p 49153:49153 ludwigprager/ng-dygraph-cli:0.1 /bin/bash
```

Then, start the server manually:

```
ng serve --host 0.0.0.0 --port 4200 --live-reload-port 49153
```

### build the image yourself

```
docker build -t ludwigprager/ng-dygraph-cli:0.1 .
```
