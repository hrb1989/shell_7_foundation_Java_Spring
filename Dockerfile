FROM openjdk:17-jdk-alpine
EXPOSE 8080
ARG JAR_FILE=target/spring-petclinic-3.1.0-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
