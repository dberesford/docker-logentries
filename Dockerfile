# docker-logentries
#
# VERSION 0.2.0

FROM mhart/alpine-node:0.12
MAINTAINER Matteo Collina <hello@matteocollina.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app

ENTRYPOINT ["/usr/src/app/index.js"]
CMD []