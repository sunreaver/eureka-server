FROM maven:3.6-jdk-8-alpine as builder

WORKDIR /usr/src/mymaven

COPY . .
COPY maven-settings.xml /usr/share/maven/conf/settings.xml 

RUN mvn -B package --file pom.xml

FROM openjdk:8-jdk-alpine

LABEL maintainer "29ygq@sina.com"

ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$JAVA_HOME/lib:/data/lib

COPY --from=builder /usr/src/mymaven/target/eureka-server-*.jar /eureka-server.jar

CMD ["java", "-Duser.timezone=GMT+08", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/eureka-server.jar"]

