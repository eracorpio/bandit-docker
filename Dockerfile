FROM alpine
MAINTAINER Eracorp Tech <info@eracorp.io> 

#installing packages and adding a system user named bandit
RUN apk add --no-cache py3-pip && \
	pip3 --no-cache-dir install bandit && \
	mkdir -p /bandit && \
	addgroup bandit && \
	adduser -D -G bandit bandit && \
	chown -R bandit:bandit /bandit

USER bandit
VOLUME /bandit
WORKDIR /bandit
ENTRYPOINT ["/usr/bin/bandit"]