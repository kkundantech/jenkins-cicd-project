FROM eclipse-temurin:17

WORKDIR /app

COPY target/jenkins-cicd-project-1.0-SNAPSHOT.jar app.jar

CMD ["java", "-jar", "app.jar"]