
# Use the official image as a parent image
FROM tomcat:8.0

# Set the working directory in the container
WORKDIR /usr/local/tomcat/webapps/

# Copy the WAR file into the webapps directory of the Tomcat server
COPY /target/my.war ./

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the command inside your container filesystem
CMD ["catalina.sh", "run"]



# we are extending everything fr
#.
#...l ;jnk.om tomcat:8.0 image .......
#'.'#FROM tomcat:8.0-alpine
#LABEL maintainer=”deepak@softwareyoga.com”
# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat
#COPY tomcat-users.xml /usr/local/tomcat/conf/
#COPY /target/my.war /usr/local/tomcat/webapps/
#EXPOSE 8080
#CMD ["catalina.sh", "run"]
# docker image build -t your_name/some-app location_of_dockerfile
#docker image build -t nikahat/appimage
# now if you check list of images in your docker, you will see as
# your_name/some-app-image image in it...
#docker image ls
# REPOSITORY               TAG    IMAGE ID      CREATED      SIZE
# your_name/some-app-image latest 5154ca16b1dd  1 hours ago  421MB

# creating and running a container
#docker container run -it --publish 8081:8080 nikahat/appimage


  
