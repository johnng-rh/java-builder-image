FROM centos:7
RUN yum update -y
yum install java-1.8.0-openjdk-devel
yum install maven
