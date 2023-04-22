# Define a imagem base do Docker
FROM openjdk:11-jdk-slim

ARG JAR_FILE=target/*.war

COPY ${JAR_FILE} app.war

ENTRYPOINT ["java", "-jar", "/app.war"]

EXPOSE 8080



