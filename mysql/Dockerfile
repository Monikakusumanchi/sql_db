# Use an official MySQL image as a base image
FROM mysql:latest
# Copy MySQL configuration file with local_infile enabled
COPY /workspace/sql_db/mysql/my.cnf /etc/mysql/conf.d/my.cnf
# Copy SQL script to initialize the database
COPY init.sql /docker-entrypoint-initdb.d/
# Expose the MySQL port
EXPOSE 3306
