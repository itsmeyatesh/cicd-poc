FROM openjdk
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} target/app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","target/app.jar"]