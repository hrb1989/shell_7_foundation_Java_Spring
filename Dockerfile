FROM openjdk:17
EXPOSE 8080
ARG JAR_FILE=target/spring-petclinic-3.1.0-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

