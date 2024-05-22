# Hangman Game API

This project is a Hangman game API built with Spring Boot. It allows users to register, login, play the Hangman game, and perform various user-related operations.

## Requirements

To run this project, you need:

- Java Development Kit (JDK) 8 or higher
- Apache Maven
- MySQL Server
- Postman (for testing APIs)

## Getting Started

1. Clone this repository to your local machine.
2. Set up a MySQL database and configure the database connection properties in `application.properties`.
3. Run the application using Maven
4. Once the application is running, you can access the API documentation in the OpenAPI format from `resources/static/openapi.yaml`.

## API Documentation

All the API endpoints along with their request and response schemas are documented in the OpenAPI specification file `resources/static/openapi.yaml`. You can use tools like Swagger UI or Postman to visualize and test the APIs.

To use Postman:

1. Import the OpenAPI specification file into Postman.
2. You can explore and run each API endpoint directly from Postman.
3. Make sure to provide the necessary request parameters and headers as described in the API documentation.

## Features

- Simple user account creation with username and password. User credentials are securely stored using bcrypt encryption.
- Login functionality to authenticate users.
- Ability to play the Hangman game.
- User profile management including updating email and resetting password.
- Role-based access control with user and admin roles.
- All API endpoints are documented in the OpenAPI specification file.

## Future Improvements

- Implement broadcasting to all players in a room for real-time updates.
- Enhance user experience with additional game features and functionalities.
