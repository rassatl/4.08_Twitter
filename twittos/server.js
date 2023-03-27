const express = require('express');
const mysql = require('mysql2/promise');

const app = express();

const PORT = process.env.PORT || 3000;

const config = {
  host: 'localhost',
  user: 'mon_user',
  password: 'mon_mot_de_passe',
  database: 'ma_base_de_donnees'
};

app.get('/data', async (req, res) => {
  try {
    const connection = await mysql.createConnection(config);
    const [rows] = await connection.execute('SELECT * FROM tweet');
    res.json(rows);
    connection.end();
  } catch (error) {
    console.log(error);
    res.status(500).send('Error retrieving data from database');
  }
});

app.listen(PORT, () => console.log(`Server started on port ${PORT}`));


//npm install express mysql2
//npm run server   