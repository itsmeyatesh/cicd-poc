FROM openjdk:8-jdk-alpine
WORKDIR /src
COPY .  /src
RUN mvn install
COPY /src/target/GreetingService-0.0.1-SNAPSHOT.jar app/GreetingService-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app/GreetingService-0.0.1-SNAPSHOT.jar"]