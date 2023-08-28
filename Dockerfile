
FROM maven:3-eclipse-temurin-20-alpine AS build
WORKDIR usr/src/app

COPY . ./

RUN mvn clean package

# packing stage

FROM openjdk:21-oracle

ARG JAR_NAME="spring-petclinic-3.1.0-SNAPSHOT"

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/target/${JAR_NAME}.jar ./app.jar

CMD ["java","-jar","./app.jar"]
