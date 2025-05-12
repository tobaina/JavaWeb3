FROM openjdk:11

# Install Maven
RUN apt-get update && \
    apt-get install -y maven

# Set working directory
WORKDIR /app

# Copy all files from your project folder into the image
COPY . /app

# Build the Java app using Maven
RUN mvn clean package
