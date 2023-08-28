FROM openjdk:17.0.2-slim
EXPOSE 80
ARG JAR=target/spring-petclinic-3.1.0-SNAPSHOT.jar
COPY $JAR /app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]