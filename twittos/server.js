const express = require('express');
const mysql = require('mysql2/promise');
const app = express();
// MySQL Connection Pool
const pool = mysql.createPool({
  host:'localhost',
  port: 5005,
  user: 'root',
  password: 'root',
  database: 'ma_base_de_donnees'
});



// GET route to retrieve data from the database
app.get('/data', async (req, res) => {
  try {
    const connection = await pool.getConnection();
    const [rows, fields] = await connection.execute('SELECT * FROM tweet');
    connection.release();
    res.json(rows);
  } catch (error) {
    console.error(error);
    res.status(500).send('Error retrieving data from database');
  }
});

// Start the server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`Server started on port ${PORT}`));


//npm install express mysql2
//npm run server   