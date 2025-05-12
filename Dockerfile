# Use official OpenJDK image
FROM openjdk:11

# Create app directory
WORKDIR /app

# Copy source code
COPY . /app

# Build the Java app using Maven (if using pom.xml)
RUN ./mvnw package

# Run the compiled Java program (adjust this based on your main class)
CMD ["java", "-cp", "target/classes", "Calculator"]
