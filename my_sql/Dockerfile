# Use an official MySQL image as a base image
FROM mysql:latest

# Set the environment variables for MySQL
ENV MYSQL_DATABASE mydatabase
ENV MYSQL_USER myuser
ENV MYSQL_PASSWORD mypassword
ENV MYSQL_ROOT_PASSWORD rootpassword

# Copy SQL script to initialize the database
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the MySQL port
EXPOSE 3306
