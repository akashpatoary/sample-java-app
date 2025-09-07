# Use Java 17 base image
FROM openjdk:17-jdk-alpine

# Set work directory
WORKDIR /app

# Copy jar after building
COPY target/sample-java-app-0.0.1-SNAPSHOT.jar app.jar

# Expose port
EXPOSE 8080

# Run the app
ENTRYPOINT ["java","-jar","app.jar"]