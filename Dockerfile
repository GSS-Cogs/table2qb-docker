FROM openjdk:8-alpine
MAINTAINER Alex Tucker <alex@floop.org.uk>

ENV TABLE2QB_VERSION "0.3.2"
WORKDIR /
RUN \
    apk add --no-cache curl bash libarchive-tools && \
    curl -fsL https://github.com/Swirrl/table2qb/releases/download/${TABLE2QB_VERSION}/table2qb-${TABLE2QB_VERSION}.zip | bsdtar -xvf- && \
    chmod +x /target/table2qb-${TABLE2QB_VERSION}/table2qb

ENV PATH "/target/table2qb-${TABLE2QB_VERSION}:${PATH}"
