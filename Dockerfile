FROM amazoncorretto:21-alpine AS build
WORKDIR /app
COPY . .
RUN ./gradlew clean build -x test

FROM amazoncorretto:21-alpine
WORKDIR /app
COPY --from=build /app/build/libs/flight-booking-system-*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
