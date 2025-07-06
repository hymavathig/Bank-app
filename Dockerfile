# Step 1: Use an official JDK base image
FROM openjdk:17-jdk-slim

# Step 2: Set working directory inside the container
WORKDIR /app

# Step 3: Copy the jar file into the container
COPY target/*.jar app.jar

# Step 4: Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
# Step 1: Use an official JDK base image
FROM openjdk:17-jdk-slim

# Step 2: Set working directory inside the container
WORKDIR /app

# Step 3: Copy the jar file into the container
COPY target/*.jar app.jar

# Step 4: Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]


