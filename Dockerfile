# Dockerfile
FROM adoptopenjdk:11-jdk-hotspot

WORKDIR /app

RUN ls -la ./target

COPY ./target/devops.jar ./app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
