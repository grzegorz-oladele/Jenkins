FROM maven:3.8.7-amazoncorretto-17 AS MAVEN_BUILDER
COPY pom.xml /pom.xml
RUN mkdir src/
RUN echo "Creating main class in builder layer" > src/JenkinsApplication.java
RUN mvn compile
RUN rm -f target/*
COPY ./ ./

FROM amazoncorretto:17-al2-jdk
COPY --from=MAVEN_BUILDER /target/Jenkins-0.0.1-SNAPSHOT.jar /Jenkins-0.0.1-SNAPSHOT.jar
EXPOSE 8181
CMD ["java", "-jar", "Jenkins-0.0.1-SNAPSHOT.jar"]