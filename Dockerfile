FROM tomcat:9.0

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/cloud-native-maven-app.war /usr/local/tomcat/webapps/ROOT.war
