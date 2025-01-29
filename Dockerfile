FROM amazoncorretto:8-alpine-jdk

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/devopswarrior-webapp-1.0.jar $PROJECT_HOME/devopswarrior-webapp.jar

WORKDIR $PROJECT_HOME
EXPOSE 8080
CMD ["java" ,"-jar","./spring-boot-mongo.jar"]
