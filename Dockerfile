FROM alpine:latest
MAINTAINER SUSE Containers Team <containers@suse.com>

RUN apk add salt-master

RUN adduser -Ss /bin/false saltapi
RUN echo "saltapi:saltapi" | chpasswd

CMD salt-master
