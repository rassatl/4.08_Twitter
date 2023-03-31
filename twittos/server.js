const express = require('express');
const mysql = require('mysql2/promise');
const app = express();
app.use(express.json());

app.all('*', function (req, res, next) {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Credentials', true);
  res.header('Access-Control-Allow-Methods', 'PUT, GET, POST, DELETE, OPTIONS');
  res.header('Access-Control-Allow-Headers', 'Content-Type');
  next()
})

// MySQL Connection Pool
const pool = mysql.createPool({
  host: 'localhost',
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

app.post('/profil', async (req, res) => {
  try {
    const data = req.body;
    const connection = await pool.getConnection();
    const [result, fields] = await connection.execute('INSERT INTO profil (fullname, username, pwd, mail, birthdate) VALUES (?,?,?,?,?)', [data.fullname, data.username, data.pwd, data.mail, data.birthdate]);
    connection.release();
    res.json({ res: result });
    console.log('insert good');
  } catch (error) {
    console.error(error);
  }
});

app.post('/login', async (req, res) => {
  try {
    const data = req.body;
    const connection = await pool.getConnection();
    const [rows, fields] = await connection.execute('SELECT * FROM profil WHERE username = ? AND pwd = ?', [data.username, data.pwd]
    );
    connection.release();
    if (rows.length === 1) {
      console.log('insert login good');
      res.json(rows);
    } else {
      console.log('insert login not good');
    }
  } catch (error) {
    console.error(error);
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
    const [rows, fields] = await connection.execute('SELECT * FROM tweet t JOIN profil p on t.idProfil = p.idProfil order by t.dateTweet DESC');
    connection.release();
    res.json(rows);
  } catch (error) {
    console.error(error);
    res.status(500).send('Error retrieving data from database');
  }
})


app.post('/tweet', async (req, res) => {
  try {
    const data = req.body;
    const connection = await pool.getConnection();
    const [result, fields] = await connection.execute('INSERT INTO tweet (idProfil,msg, obj, reply, retweet, lik, view ) VALUES (?,?,?,?,?,?,?)', [data.idProfil, data.msg, data.obj, data.reply, data.retweet, data.lik, data.view]);
    connection.release();
    res.json({ res: result });
    console.log('insert good');
  } catch (error) {
    console.error(error);
  }
});

// Start the server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`Server started on port ${PORT}`));