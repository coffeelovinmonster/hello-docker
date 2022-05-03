# start with the tomcat base image
FROM tomcat AS fancy_tomcat
RUN mv /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps

# copy the dist folder into the tomcat home directory
COPY dist /usr/local/tomcat/webapps/ROOT

#EXPOSE itself indecently
EXPOSE 8080
