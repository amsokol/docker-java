FROM oraclelinux:7.1
MAINTAINER Alexander Sokolovsky <amsokol@gmail.com>

# User root user to install software
USER root

RUN yum -y update && yum clean all

# Install Oracle Java SDK 7
ENV JAVA8_UPDATE 40
ADD assets/jdk-8u${JAVA8_UPDATE}-linux-x64.rpm jdk-8-linux-x64.rpm

RUN yum -y install jdk-8-linux-x64.rpm && rm jdk-8-linux-x64.rpm

# Set the JAVA_HOME variable to make it clear where Java is located
ENV JAVA_HOME /usr/java/latest

CMD ["bash"]
