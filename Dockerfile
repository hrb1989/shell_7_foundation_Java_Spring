# build a jar file
FROM maven:3.8/2-jdk-17-slim AS stage1
WORKDIR /home/app
COPY _ /home/app/
RUN mvn -f /home/app/pom.xml clean package

#Create an image
FROM openjdk:17-jdk-alpine
EXPOSE 5000
COPY --from=stage1 /home/app/target/shell_7_foundation_Java_Spring.jar shel_7_foundation_Java_Spring.jar
ENTRYPOINT [ "sh", "-c", "java" -jar /shell_7_foundation_Java_Spring.jar"]
