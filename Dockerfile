FROM tomcat:9.0
ADD target/comp367-webapp.war /usr/local/tomcat/webapps/
