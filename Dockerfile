FROM airdock/oracle-jdk:1.7

# Maintainer
MAINTAINER aungzy

# Install unzip
RUN apt-get update -y
RUN apt-get install -y unzip

RUN wget -P /opt http://dist.wso2.org/maven2/org/wso2/am/wso2am/1.8.0/wso2am-1.8.0.zip && \
    unzip /opt/wso2am-1.8.0.zip -d /opt && \
    mv /opt/wso2am-1.8.0 /opt/wso2am && \
    rm /opt/wso2am-1.8.0.zip

# Expose ports 9443, 9763 and 10397
EXPOSE 9443 9763 10397

CMD ["/opt/wso2am/bin/wso2server.sh"]
