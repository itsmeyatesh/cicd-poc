FROM openjdk
VOLUME /tmp
ADD /target/GreetingService-0.0.1-SNAPSHOT.jar target/app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","target/app.jar"]