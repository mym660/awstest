FROM eclipse-temurin:21-jre
WORKDIR /app

# Use build arg or copy directly
COPY build/libs/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]