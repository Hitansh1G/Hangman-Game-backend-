# Use the Maven image with OpenJDK 17
FROM maven:3.8.4-openjdk-17-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the entire current directory contents into the container at /app
COPY . .

# Build your application with Maven
RUN mvn clean package

# Specify the command to run on container start
CMD ["java", "-jar", "target/hangman-0.0.1-SNAPSHOT.jar"]
