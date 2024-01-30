docker build -t my-mongodb .
docker run -d --name my-mongodb-container -p 27017:27017 my-mongodb
# Connect to the MongoDB container
docker exec -it my-mongodb-container mongo -u admin -p admin123 --authenticationDatabase admin

# Switch to the target database
use mydatabase

# Query the data in the collection
db.mycollection.find()