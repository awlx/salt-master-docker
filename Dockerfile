FROM alpine:3.15.0
MAINTAINER Annika Wickert <aw@awlnx.space>
RUN apk add --no-cache salt-master

RUN adduser -Ss /bin/false saltapi
RUN echo "saltapi:saltapi" | chpasswd

CMD salt-master
