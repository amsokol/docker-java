FROM oraclelinux:7.1
MAINTAINER Alexander Sokolovsky <amsokol@gmail.com>

# User root user to install software
USER root

# Update to 7.1. Temporary fix until 7.1 images is not available
RUN yum -y update && yum clean all

# Install Oracle Java SDK 7
ENV JAVA7_UPDATE 75
ADD assets/jdk-7u${JAVA7_UPDATE}-linux-x64.rpm jdk-7-linux-x64.rpm

RUN yum -y install jdk-7-linux-x64.rpm && rm jdk-7-linux-x64.rpm

# Set the JAVA_HOME variable to make it clear where Java is located
ENV JAVA_HOME /usr/java/latest

CMD ["bash"]
