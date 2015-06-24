FROM centos:centos7
MAINTAINER Alexander Sokolovsky <amsokol@gmail.com>

# User root user to install software
USER root

RUN yum -y update && yum clean all

# Install OpenJDK 7
RUN yum -y install java-1.7.0-openjdk-devel && yum clean all

CMD ["bash"]
