# Use an official PostgreSQL image as a base image
FROM postgres:latest

# Set the environment variables for PostgreSQL
ENV POSTGRES_DB mydatabase
ENV POSTGRES_USER myuser
ENV POSTGRES_PASSWORD mypassword

# Copy the SQL script to initialize the database
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the PostgreSQL port
EXPOSE 5432
