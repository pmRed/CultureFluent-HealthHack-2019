FROM node:10-alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

RUN npm install -g gatsby-cli 

RUN npm install

RUN gatsby build

CMD [ "gatsby", "serve" ]
