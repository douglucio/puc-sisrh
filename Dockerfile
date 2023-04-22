# Define a imagem base do Docker
FROM openjdk:19-jdk-alpine3.13
RUN mkdir /usr/local/tomcat
RUN mkdir /usr/local/tomcat/webapps/sisrh
COPY /home/rnd/www/puc-sisrh/target/sisrh.war /usr/local/tomcat/webapps/sisrh
EXPOSE 8080
CMD ["catalina.sh", "run"]