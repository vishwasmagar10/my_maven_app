ARG JAVA_VERSION=21
FROM eclipse-temurin:${JAVA_VERSION}-jre-alpine

WORKDIR /app

COPY target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]
