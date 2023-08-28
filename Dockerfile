# Use a base image with Java 17 and Alpine Linux
FROM openjdk:17.0.2-slim

# Set the working directory
WORKDIR /

# Expose port 80
EXPOSE 80

# Copy the JAR file into the container
COPY target/spring-petclinic-3.1.0-SNAPSHOT.jar /app.jar

# Set the entry point to run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
