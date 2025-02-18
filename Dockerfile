#  Use a stable official Java runtime base image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container 
WORKDIR /app

# Copy source code into the container
COPY src/Main.java /app/Main.java

# Compile the Java source code  
RUN javac Main.java

# Run the Java application when the container starts
CMD ["java", "Main"]
