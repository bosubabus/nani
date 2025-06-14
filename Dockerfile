##artifact build stage
FROM maven AS buildstage
RUN mkdir /opt/bosubabus
WORKDIR /opt/bosubabus
COPY . .
RUN mvn clean install    ##artifact -- .war

### tomcat deploy stage
FROM tomcat
WORKDIR webapps
COPY --from=buildstage /opt/bosubabus/target/".war .
RUN rm -rf ROOT && mv ".war ROOT.war
EXPOSE 8080
