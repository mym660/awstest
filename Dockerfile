# Use an official OpenJDK 21 runtime as a parent image
FROM eclipse-temurin:21-jre

# Set the working directory
WORKDIR /app

# Copy the built JAR file
# The JAR name includes the version, so we use a build argument for flexibility
ARG JAR_FILE=build/libs/aliakseitkachuk-1.1.0.jar
COPY ${JAR_FILE} app.jar

# Expose port 8080 (default for Spring Boot)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"] 