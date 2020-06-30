# Building the project
FROM maven:3-jdk-11 as builder

WORKDIR /build
COPY pom.xml /build
#Download all required dependencies into one layer
RUN mvn -B -DskipTests dependency:resolve dependency:resolve-plugins
#Copy source code
COPY src /build/src

RUN mvn package

# Creating the image
FROM azul/zulu-openjdk-alpine:11

MAINTAINER Joby Pooppillikudiyil "joby.pooppillikudiyil@nttdata.com"

EXPOSE 8080
COPY build/target/*.jar app.jar

ENV JAVA_OPTS=""

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar /app.jar" ]
