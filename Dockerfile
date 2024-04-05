FROM maven:3.8.4 AS build
COPY . .
RUN  mvn package -DskipTests

FROM openjdk:20-jdk-slim
EXPOSE 8080
COPY --from=build /target/rentamaq-0.0.1-SNAPSHOT.jar .

ENTRYPOINT ["java", "-jar","rentamaq-0.0.1-SNAPSHOT.jar "]