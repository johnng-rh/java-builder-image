FROM centos:7
RUN yum update -y
RUN yum install java-1.8.0-openjdk-devel
RUN yum install maven
