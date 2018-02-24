FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} greeting.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/greeting.jar"]