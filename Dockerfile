FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/*.war
COPY ${JAR_FILE} ebureau.war
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/ebureau.war"]