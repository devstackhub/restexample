FROM azul/zulu-openjdk-alpine:11
MAINTAINER Joby Pooppillikudiyil "joby.pooppillikudiyil@nttdata.com"

RUN apk add maven 

WORKDIR /build
COPY pom.xml /build
COPY src /build/src

RUN mvn package

EXPOSE 8080
ADD build/target/*.jar app.jar

ENV JAVA_OPTS=""

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar /app.jar" ]
