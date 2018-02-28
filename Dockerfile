FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY target/GreetingService-0.0.1-SNAPSHOT.jar GreetingService-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","GreetingService-0.0.1-SNAPSHOT.jar"]