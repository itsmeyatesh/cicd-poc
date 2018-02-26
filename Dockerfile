FROM dockerfile/java:oracle-java8
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} target/greeting.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","target/greeting.jar"]