FROM docker:20
RUN apk update
RUN apk add openjdk8-jre
RUN apk add maven
RUN apk add git
RUN apk add curl
