FROM ubuntu:latest as build
COPY . .
RUN  mvn spring-boot:run

FROM openjdk:20
EXPOSE 8080
COPY --from=build /target/rentamaq-0.0.1-SNAPSHOT.jar .

ENTRYPOINT ["java", "-jar","rentamaq-0.0.1-SNAPSHOT.jar"]