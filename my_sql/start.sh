sudo docker pull mysql/mysql-server:latest
sudo docker pull mysql/mysql-server:latest
sudo docker run --name=[container_name] -d mysql/mysql-server:latest
sudo docker run --name=my_sql_ctr -d mysql/mysql-server:latest
docker ps
# Connect with the Docker MySQL Container
sudo apt-get install mysql-client
sudo docker logs [container_name]
sudo docker logs my_sql_ctr
# saving the password  GENERATED ROOT PASSWORD: 2KMHqW=_7@u&r5Tdr7X61+2*KxA*Yq^6
sudo docker exec -it [container_name] bash
sudo docker exec -it my_sql_ctr bash
mysql -uroot -p
# enter the password 2KMHqW=_7@u&r5Tdr7X61+2*KxA*Yq^6
# change the root server password to protect your sensitive information 
ALTER USER 'root'@'localhost' IDENTIFIED BY "monika1407";
#creating a database
CREATE DATABASE mydatabase;
USE mydatabase;
CREATE TABLE mytable (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  age INT
);

INSERT INTO mytable (name, age) VALUES ('John Doe', 30);
INSERT INTO mytable (name, age) VALUES ('Jane Smith', 25);
SELECT * FROM mytable;
UPDATE mytable SET age = 31 WHERE name = 'John Doe';
DELETE FROM mytable WHERE name = 'Jane Smith';
sudo docker pull phpmyadmin/phpmyadmin
# to get ip address of the container
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' 0947

sudo docker exec -it my_sql_ctr bash
mysql -uroot -p
UPDATE mysql.user SET Host='172.17.0.4' WHERE User='your_mysql_user'
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'172.17.0.4' IDENTIFIED BY 'monika1407' WITH GRANT OPTION;
UPDATE mysql.user SET Host='172.17.0.4' WHERE User='root';

FLUSH PRIVILEGES;

