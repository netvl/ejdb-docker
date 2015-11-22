FROM node:0-onbuild

RUN apt-get update && apt-get install -y cmake

RUN cd /tmp && git clone --recursive https://github.com/Softmotions/ejdb-node
COPY package.json /tmp/ejdb-node/
RUN cd /tmp/ejdb-node && npm install -g .

ENTRYPOINT ejdb
