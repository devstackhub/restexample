FROM openjdk:11.0.7-jdk

MAINTAINER Joby Pooppillikudiyil "joby.pooppillikudiyil@nttdata.com"

RUN pwd
RUN ls -lrt
RUN ls -lrt target

EXPOSE 8080
ADD target/*.jar app.jar

CMD ["java", "-jar", "/app.jar"]
