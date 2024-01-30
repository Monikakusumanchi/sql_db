# Use the official MongoDB image as a base image
FROM mongo:latest

# Expose the MongoDB port
EXPOSE 27017

# Set environment variables
ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=admin123
ENV MONGO_INITDB_DATABASE=mydatabase

# Copy the initialization script to the container
COPY init.js /docker-entrypoint-initdb.d/

# Create a data directory for MongoDB
VOLUME /data/db
