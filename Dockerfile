FROM java:8-jre
MAINTAINER John J. Chambers-Malewig

ENV SCHEMASPY_VERSION 5.0.0

RUN apt-get update && \
    apt-get install -y \
        graphviz \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* \
           /tmp/* \
           /var/tmp/*

COPY schemaSpy_${SCHEMASPY_VERSION}.jar schemaSpy.jar

ENTRYPOINT [ "java", "-jar", "schemaSpy.jar" ]

CMD [ "--help" ]
