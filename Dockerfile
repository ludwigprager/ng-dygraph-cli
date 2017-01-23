FROM node:6.6

RUN apt-get update && apt-get install -y --no-install-recommends \
	vim less

WORKDIR /work/

RUN npm install -g angular-cli@1.0.0-beta.24 && npm cache clean

RUN ng new project1; exit 0

WORKDIR /work/project1/

RUN npm install

COPY app.module.ts src/app/

RUN npm install dygraphs --save
RUN npm install ng-dygraphs --save

EXPOSE 4200

CMD ["ng", "serve"]
