FROM gradle:7.5-jdk AS builder

WORKDIR /geneva

COPY src /geneva/src
COPY build.gradle /geneva
COPY settings.gradle /geneva

RUN gradle bootJar

FROM eclipse-temurin:17-jre

WORKDIR /app/geneva

COPY --from=builder /geneva/build/libs/*.jar /app/geneva/geneva.jar

EXPOSE 8080

CMD java -jar geneva.jar
