# Use the OpenJDK 8 base image
FROM openjdk:8

# Expose port 8080
EXPOSE 8080

# Add the JAR file from the target directory into the Docker image
ADD target/SimpleJavaApplication-0.0.1-SNAPSHOT.jar /SimpleJavaApplication-0.0.1-SNAPSHOT.jar

# Specify the entry point to run the Java application
ENTRYPOINT ["java", "-jar", "/SimpleJavaApplication-0.0.1-SNAPSHOT.jar"]
