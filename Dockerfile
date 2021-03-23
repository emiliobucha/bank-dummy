FROM openjdk:8-jdk-alpine
EXPOSE 8080
COPY target/*.jar bank.jar
CMD java -jar /bank.jar
