FROM openjdk:alpine AS base
MAINTAINER Alex Tucker <alex@floop.org.uk>

ADD https://github.com/Swirrl/table2qb/releases/download/0.3.0/table2qb-0.3.0.zip /tmp/table2qb.zip
RUN unzip /tmp/table2qb.zip -d /tmp

FROM openjdk:alpine AS prod

COPY --from=base /tmp/target/*/table2qb* /usr/bin/
RUN apk --no-cache add bash



