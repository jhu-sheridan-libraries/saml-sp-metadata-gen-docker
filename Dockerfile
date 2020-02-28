FROM jhulibraries/alpine-base-git-ansible-docker:6.alpine-3.10.2

ENV WORKING_DIR /working

COPY bin/* /

RUN mkdir /working && \
    chown daemon $WORKING_DIR && \
    apk add openssl bash

USER daemon
WORKDIR $WORKING_DIR
ENTRYPOINT [ "/entrypoint.sh" ]
