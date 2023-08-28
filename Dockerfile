# Build a JAR File
FROM maven:3.8.4-openjdk-17-slim AS build
WORKDIR /home/app
COPY . /home/app/
RUN mvn clean package

# Create an Image 
FROM openjdk:17-slim
EXPOSE 5000
COPY --from=build /home/app/target/shell_7_foundation_Java_Spring.jar shell_7_foundation_Java_Spring.jar
ENTRYPOINT ["java","-jar","shell_7_foundation_Java_Spring.jar"]
