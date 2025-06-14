##artifact build stage
FROM maven AS buildstage
RUN mkdir /opt/bosubabus
WORKDIR /opt/bosubabus
COPY . .
RUN mvn clean install    ##artifact -- .war

EXPOSE 8080
