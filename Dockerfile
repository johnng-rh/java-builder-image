FROM docker:20
RUN apk update -y
RUN apk install openjdk8-jre -y
RUN apk install maven -y
RUN apk install -y git
