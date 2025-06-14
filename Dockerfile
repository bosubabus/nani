##artifact build stage
FROM maven AS buildstage
RUN mkdir /opt/bosubabus
WORKDIR /opt/bosubabus
COPY . .
RUN mvn clean install

EXPOSE 8080

