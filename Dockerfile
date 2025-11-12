# Build Stage (optional if you build jar on host; here we copy the jar only)
FROM eclipse-temurin:21-jre AS runtime
WORKDIR /app

# COpy tje fat jar built by maven
COPY target/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/app.jar"]