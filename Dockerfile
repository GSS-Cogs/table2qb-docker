FROM openjdk:alpine
MAINTAINER Alex Tucker <alex@floop.org.uk>

COPY table2qb-0.3.1-SNAPSHOT.jar /usr/bin/table2qb.jar
RUN apk --no-cache add bash



