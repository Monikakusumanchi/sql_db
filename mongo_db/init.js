// init.js

// Connect to the admin database
var adminDB = db.getSiblingDB('admin');

// Authenticate as the root user
adminDB.auth('admin', 'admin123');

// Switch to the target database
var targetDB = db.getSiblingDB('mydatabase');

// Create a sample collection and insert data
targetDB.mycollection.insert([
  { name: 'John', age: 30 },
  { name: 'Jane', age: 25 },
  { name: 'Bob', age: 35 }
]);
