# Use an official OpenJDK runtime as the base image
FROM openjdk:11-jre-slim

# Set the working directory within the container
WORKDIR /app

# Copy the JAR file from your local build directory to the container
COPY target/spring-petclinic-3.1.0-SNAPSHOT.jar app.jar

# Specify the command to run the application when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]




