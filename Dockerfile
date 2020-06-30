# Building the project
FROM maven:3-jdk-11 as builder

WORKDIR /

RUN mvn package

# Creating the image
FROM azul/zulu-openjdk-alpine:11

COPY target/*.jar app.jar

ENV JAVA_OPTS="-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap"

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar /app.jar" ]
