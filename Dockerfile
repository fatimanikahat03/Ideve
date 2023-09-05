
# we are extending everything from tomcat:8.0 image ...
FROM tomcat
# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat
COPY my/target/my.war /usr/local/tomcat/webapps/

# docker image build -t your_name/some-app location_of_dockerfile
docker image build -t nikahat/appimage ./
# now if you check list of images in your docker, you will see as
# your_name/some-app-image image in it...
docker image ls
# REPOSITORY               TAG    IMAGE ID      CREATED      SIZE
# your_name/some-app-image latest 5154ca16b1dd  1 hours ago  421MB

# creating and running a container
#docker container run -it --publish 8081:8080 nikahat/appimage






$ ls
Dockerfile  ROOT.war
$ cat Dockerfile 
FROM tomcat

COPY my.war /usr/local/tomcat/webapps/





docker image pull tomcat
COPY my.war /usr/local/tomcat/webapps/

docker image ls # it will list all images in your docker
docker container create --publish 8081:8080 --name my-tomcat-container tomcat
docker container ls -a # it will list all the containers
docker container start my-tomcat-container

# to get inside your docker tomcat container directory...
docker container exec -it my-tomcat-container bash
# it will list tomcat directory inside your docker as
# :/usr/local/tomcat# ls
# LICENSE  NOTICE  RELEASE-NOTES RUNNING.txt  bin  conf include  lib # logs  native-jni-lib  temp  webapps  work
