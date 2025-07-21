FROM eclipse-temurin:21-jre
WORKDIR /app

# Use build arg or copy directly
COPY build/libs/aliakseitkachuk-1.1.0.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]