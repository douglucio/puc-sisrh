FROM tomcat:jdk8-openjdk

COPY . /usr/local/tomcat/webapps/

RUN ["javac", "-cp", ".:/usr/local/tomcat/lib/servlet-api.jar", "-d", "/usr/local/tomcat/webapps/myApp/WEB-INF/classes/", "/usr/local/tomcat/webapps/myApp/src/InicializarBancoServlet.java"]

# Serve Tomcat
EXPOSE 8080
CMD ["catalina.sh", "run"]