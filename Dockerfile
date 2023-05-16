# Set the base image
FROM adoptopenjdk:11-jre-hotspot

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR/WAR file to the container
COPY target/23946_HOSPITAL_MANAGEMENT-0.0.1-SNAPSHOT.war /app/app.war

# Expose the port your application uses
EXPOSE 8080

# Set the entry point command for the container
CMD ["java", "-jar", "/app/app.war"]
