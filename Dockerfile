FROM maven:3.8.1-jdk-11 AS build

WORKDIR /app

COPY ./src ./src
COPY ./pom.xml ./pom.xml
COPY ./mvnw ./mvnw
COPY ./mvnw.cmd ./mvnw.cmd

RUN mvn clean install

FROM openjdk:11-jre-slim

WORKDIR /app

COPY --from=build /app/target/devops.jar app/

ENTRYPOINT exec java $JAVA_OPTS -jar app/devops.jar
