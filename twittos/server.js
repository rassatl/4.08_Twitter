const express = require('express');
const mysql = require('mysql');
const app = express();
const port = 3000;

// Create a MySQL connection pool
const pool = mysql.createPool({
  connectionLimit: 10,
  host: 'mariadb',
  user: 'mon_user',
  password: 'mon_mot_de_passe',
  database: 'ma_base_de_donnees'
});

// Define a route to retrieve data from the MySQL database
app.get('/api/data', (req, res) => {
  // Get a connection from the pool
  pool.getConnection((err, connection) => {
    if (err) {
      console.error('Error getting MySQL connection', err);
      res.status(500).send('Error getting MySQL connection');
      return;
    }

    // Execute the MySQL query
    connection.query('SELECT * FROM tweet', (err, results) => {
      // Release the connection back to the pool
      connection.release();

      if (err) {
        console.error('Error executing MySQL query', err);
        res.status(500).send('Error executing MySQL query');
        return;
      }

      // Send the results as a JSON response
      res.json(results);
    });
  });
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});

//node server.js