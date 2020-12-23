FROM docker:20
RUN apk update
RUN apk install openjdk8-jre
RUN apk install maven
RUN apk install git
