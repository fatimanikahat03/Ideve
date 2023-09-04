FROM node

RUN apt-get update && apt-get install -y maven

RUN mkdir /app
WORKDIR /app

COPY pom.xml /app/
RUN mvn install




FROM node

RUN apt-get update && apt-get upgrade -y \
    && apt-get clean






