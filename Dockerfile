
# we are extending everything from tomcat:8.0 image ...
FROM tomcat
# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat
COPY my/target/my.war /usr/local/tomcat/webapps/

# docker image build -t your_name/some-app location_of_dockerfile
docker image build -t nikahat/appimage
# now if you check list of images in your docker, you will see as
# your_name/some-app-image image in it...
docker image ls
# REPOSITORY               TAG    IMAGE ID      CREATED      SIZE
# your_name/some-app-image latest 5154ca16b1dd  1 hours ago  421MB

# creating and running a container
#docker container run -it --publish 8081:8080 nikahat/appimage







