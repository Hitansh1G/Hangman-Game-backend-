## Use a base image that includes Maven
#FROM maven:3.8.4-openjdk-17-slim
#
## Set the working directory
#WORKDIR /app
#
## Copy the entire current directory into the Docker image
#COPY . /app/
#
## Run Maven build command
#RUN mvn clean package
#
## Command to run your application (if needed)
#CMD ["java", "-jar", "target/hangman-0.0.1-SNAPSHOT.jar"]


#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

#
# Package stage
#
FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/hangman-0.0.1-SNAPSHOT.jar /usr/local/lib/demo.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/demo.jar"]