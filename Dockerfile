FROM centos:7
RUN yum update -y
RUN yum install java-1.8.0-openjdk-devel -y
RUN yum install maven -y
RUN yum install -y yum-utils
RUN yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
RUN yum install -y docker-ce docker-ce-cli containerd.io
