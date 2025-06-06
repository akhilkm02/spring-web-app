# Use official Tomcat base image
FROM tomcat:9.0-jdk17

# Remove default webapps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into Tomcat webapps directory
COPY target/spring-web-app.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Default command (inherited): run Tomcat
