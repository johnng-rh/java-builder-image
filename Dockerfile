FROM nghyjohn/centos-base:latest
ENV DOCKER_VERSION 20.10.1
#RUN yum update -y
RUN yum install java-1.8.0-openjdk-devel -y
RUN yum install maven -y
#RUN yum install -y yum-utils
#RUN yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
#RUN yum install -y docker-ce docker-ce-cli containerd.io
RUN yum install -y git
wget -O docker.tgz https://download.docker.com/linux/static/stable/x86_64/docker-20.10.1.tgz
tar --extract --file docker.tgz --strip-components 1 --directory /usr/local/bin/
rm docker.tgz;
COPY modprobe.sh /usr/local/bin/modprobe
COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
