# Use an official Docker Compose base image
FROM docker/compose:latest

# Set the working directory
WORKDIR /app

# Copy the docker-compose.yml file
COPY docker-compose.yml .

# Copy the secret files
COPY db_password.txt .
COPY db_root_password.txt .

# Expose the necessary ports
EXPOSE 8080 8282 3306

# Command to run docker-compose
CMD ["up", "-d"]