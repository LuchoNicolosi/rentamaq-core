FROM maven:3.8.4 AS build
COPY . .
RUN  mvn package -DskipTests

FROM openjdk:20
COPY ./target/paqueteria-0.0.1-SNAPSHOT.jar .
CMD ["java","-jar" ,"paqueteria-0.0.1-SNAPSHOT.jar"]