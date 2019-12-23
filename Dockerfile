# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Set working directory
WORKDIR /usr/app

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=target/demo-todo-app-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} todo-app.jar

# Run the jar file 
ENTRYPOINT ["java","-jar", "todo-app.jar"]


 
