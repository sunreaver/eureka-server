FROM tomcat:7-jdk8

LABEL maintainer "29ygq@sina.com"

# 默认版本变量
ENV EUREKA_VERSION 1.9.9

WORKDIR /usr/local/tomcat/webapps

RUN mkdir eureka && \
  cd eureka && \
  wget -q http://repo1.maven.org/maven2/com/netflix/eureka/eureka-server/${EUREKA_VERSION}/eureka-server-${EUREKA_VERSION}.war &&\
  jar xf eureka-server-${EUREKA_VERSION}.war && \
  rm eureka-server-${EUREKA_VERSION}.war

ADD *.properties /usr/local/tomcat/webapps/eureka/WEB-INF/classes/
  
EXPOSE 8080
