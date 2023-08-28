FROM openjdk:17-jre-slim
WORKDIR /app
COPY ./targer/*.jar ./my-app.jar
CMD ["java","-jar","./shell_7_foundation_Java_Spring.jar"]

