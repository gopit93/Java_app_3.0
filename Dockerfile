# FROM openjdk:8-jdk-alpine
# WORKDIR /app
# COPY ./target/*.jar /app.jar
# CMD ["java", "-jar", "/app.jar"]


FROM openjdk:8-jdk-alpine
COPY app.jar /app.jar
COPY --from=build /home/gradle/src/build/libs/*.jar /app.jar
[...]
