const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'bcampero96',
  database: 'employee_db',
});

connection.connect((err) => {
  if (err) throw err;
  console.log('Connected to the employee_db database.');
});

module.exports = connection;
