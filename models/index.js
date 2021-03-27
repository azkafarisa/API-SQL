const mysql = require("mysql2"); // Import mysql

// Make mysql connection
const connection = mysql.createConnection({
  host: "localhost",
  user: "",
  password: "",
  database: "",
});

module.exports = connection; // Export connection
