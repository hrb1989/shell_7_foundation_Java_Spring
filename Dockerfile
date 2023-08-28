
FROM maven:3.6.3-jdk-20-slim AS build
WORKDIR usr/src/app

COPY . ./

RUN mvn clean package

# packing stage

FROM openjdk:20-jre-slim

ARG JAR_NAME="spring-petclinic-3.1.0-SNAPSHOT.jar"

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/target/${JAR_NAME}.jar ./app.jar

CMD ["java","-jar","./app.jar"]
