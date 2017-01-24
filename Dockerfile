FROM node:6.6

RUN apt-get update && apt-get install -y --no-install-recommends \
	jq vim less

WORKDIR /work/

RUN npm install -g angular-cli@1.0.0-beta.24 && npm cache clean

RUN ng new project1; exit 0
WORKDIR /work/project1/

# modify angular-cli.json as described in https://www.npmjs.com/package/ng-dygraphs
RUN cp angular-cli.json angular-cli.json.orig
RUN cat angular-cli.json.orig | \
	jq '.apps[0].styles |= .+ ["../node_modules/dygraphs/dist/dygraph.css"]' | \
	jq '.apps[0].scripts |= .+ ["../node_modules/dygraphs/dist/dygraph.js"]' | \
	jq '.apps[0].scripts |= .+ ["../node_modules/ng-dygraphs/lib/index.js"]'   \
	> angular-cli.json


RUN npm install

COPY app.module.ts src/app/

RUN npm install dygraphs@2.0.0 --save
RUN npm install ng-dygraphs@0.2.4 --save

EXPOSE 4200

CMD ["ng", "serve"]
