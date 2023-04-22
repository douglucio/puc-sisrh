# Define a imagem base do Docker
FROM openjdk:11-jdk-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Compile the Java servlet application
RUN javac -cp "lib/*" -d bin src/*.java

# Set the classpath for the application
ENV CLASSPATH /app/bin:/app/lib/*

# Expose port 8080
EXPOSE 8080

# Run the application when the container starts
CMD ["java", "Main"]