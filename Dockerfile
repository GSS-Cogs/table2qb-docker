FROM clojure:lein-alpine as build
MAINTAINER Alex Tucker <alex@floop.org.uk>

RUN apk --no-cache add git && \
    git clone https://github.com/Swirrl/table2qb.git && \
    cd table2qb && \
    lein uberjar

FROM openjdk:alpine

COPY --from=build /tmp/table2qb/target/table2qb.jar /usr/bin/table2qb.jar
COPY table2qb /usr/bin/table2qb
RUN apk --no-cache add bash
