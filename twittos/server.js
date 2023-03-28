const express = require('express');
const mysql = require('mysql2/promise');
const app = express();

app.use((req, res, next) => {
  res.setHeader('Access-Control-Allow-Origin', '*');
  next();
});

// MySQL Connection Pool
const pool = mysql.createPool({
  host:'localhost',
  port: 5005,
  user: 'root',
  password: 'root',
  database: 'ma_base_de_donnees'
});


// GET route to retrieve data from the database
app.get('/profil', async (req, res) => {
  try {
    const connection = await pool.getConnection();
    const [rows, fields] = await connection.execute('SELECT * FROM profil');
    connection.release();
    res.json(rows);
  } catch (error) {
    console.error(error);
    res.status(500).send('Error retrieving data from database');
  }
  
});

app.get('/mp', async (req, res) => {
  try {
    const connection = await pool.getConnection();
    const [rows, fields] = await connection.execute('SELECT * FROM mp');
    connection.release();
    res.json(rows);
  } catch (error) {
    console.error(error);
    res.status(500).send('Error retrieving data from database');
  }
  
});

app.get('/tweet', async (req, res) => {
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
