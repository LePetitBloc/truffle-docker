FROM node:alpine

RUN apk add --no-cache \
	libc6-compat \
	make

RUN npm install -g truffle

COPY docker/docker-truffle-entrypoint.sh /usr/local/bin/docker-entrypoint
RUN chmod +x /usr/local/bin/docker-entrypoint

WORKDIR /srv/truffle
COPY ./truffle .

ENTRYPOINT ["docker-entrypoint"]

