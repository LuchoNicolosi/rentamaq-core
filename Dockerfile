FROM openjdk:20
EXPOSE 8080
COPY /target/rentamaq-0.0.1-SNAPSHOT.jar .

ENTRYPOINT ["java", "-jar","rentamaq-0.0.1-SNAPSHOT.jar"]
