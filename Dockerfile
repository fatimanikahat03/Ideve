FROM node

RUN apt-get update && apt-get install -y maven

RUN mkdir /app
WORKDIR /app

COPY pom.xml /app/
RUN mvn install




FROM node

RUN apt-get update && apt-get upgrade -y \
    && apt-get clean

RUN mkdir /app
WORKDIR /app

#COPY --from=0 /app/src/public/static/bower_components/ /app/src/public/static/bower_components/

COPY pom.xml /app/
RUN mvn install
# --only=production

COPY src /app/src

EXPOSE 3000

CMD [ "mvn", "exec:java" ]

#RUN ls -lah /app/src/public/static/bower_components/
