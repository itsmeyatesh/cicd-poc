FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY cicd-poc/target/GreetingService-0.0.1-SNAPSHOT.jar cicd-poc/target/app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","cicd-poc/target/app.jar"]