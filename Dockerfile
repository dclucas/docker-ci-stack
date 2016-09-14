FROM jenkins:2.7.4-alpine

MAINTAINER Diogo Lucas <https://github.com/dclucas>

USER root

ENV DOCKER_COMPOSE_VERSION 1.8.0

RUN apk --update add py-pip py-yaml &&\
    pip install -U docker-compose==${DOCKER_COMPOSE_VERSION} &&\
    rm -rf `find / -regex '.*\.py[co]' -or -name apk`
ENTRYPOINT ["docker-compose"]
CMD ["--version"]

USER jenkins