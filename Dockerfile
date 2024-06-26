# Use a base image that includes Maven
FROM maven:3.8.4-openjdk-17-slim

# Set the working directory
WORKDIR /app

# Copy the entire current directory into the Docker image
COPY . /app/

# Run Maven build command
RUN mvn clean package

# Command to run your application (if needed)
CMD ["java", "-jar", "target/hangman-0.0.1-SNAPSHOT.jar"]
