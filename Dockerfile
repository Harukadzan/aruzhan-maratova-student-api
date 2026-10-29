FROM gradle:7.6-jdk17 AS build
WORKDIR /app
COPY . .
RUN gradle bootJar --no-daemon || true

FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY --from=build /app/src ./src
EXPOSE 8081
ENTRYPOINT ["echo", "Aruzhan Maratova Student API Container Running"]
