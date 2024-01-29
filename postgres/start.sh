docker build -t my-mysql-db .
docker run -p 5432:5432 --name my-postgres-container -d my-postgres-db

docker exec -it my-postgres-container psql -U myuser -d mydatabase
# INSERT INTO users (username, email) VALUES ('john_doe', 'john@example.com');

# -- Query all users
# SELECT * FROM users;

# -- Update user email
# UPDATE users SET email = 'john.doe@gmail.com' WHERE username = 'john_doe';

# -- Delete a user
# DELETE FROM users WHERE username = 'john_doe';