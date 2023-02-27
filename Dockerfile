FROM maven:3.8.4-openjdk-17
WORKDIR /app
COPY . .
RUN mvn dependency:go-offline
RUN mvn package -DskipTests
RUN cp ./target/smweb-0.0.1-SNAPSHOT.jar .
CMD ["java", "-jar", "smweb-0.0.1-SNAPSHOT.jar"]
