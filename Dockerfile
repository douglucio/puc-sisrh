# Use the official JDK 19 image as the parent image
FROM openjdk:19-jdk-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN apk update && apk add wget

# Install any necessary dependencies
RUN apk add --no-cache curl

# Expose port 8080 for the web application
EXPOSE 8080

# Define the command to run the application when the container starts
CMD ["java", "-jar", "app.war"]