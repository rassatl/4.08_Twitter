const Twit = require('twit');
const mysql = require('mysql2/promise');

const T = new Twit({
  consumer_key: 'YOUR_CONSUMER_KEY',
  consumer_secret: 'YOUR_CONSUMER_SECRET',
  access_token: 'YOUR_ACCESS_TOKEN',
  access_token_secret: 'YOUR_ACCESS_TOKEN_SECRET',
});

// MySQL Connection Pool
const pool = mysql.createPool({
  host:'localhost',
  port: 5005,
  user: 'root',
  password: 'root',
  database: 'ma_base_de_donnees'
});

async function createTweetAndInsertData(data) {
  try {
    const tweetContent = `Name: ${data.name}, Age: ${data.age}, Gender: ${data.gender}`;
    T.post('statuses/update', { status: tweetContent }, async (err, data, response) => {
      if (err) {
        console.error(err);
      } else {
        console.log('Tweet posted!');
        try {
          const connection = await pool.getConnection();
          const [result, fields] = await connection.execute('INSERT INTO profil (name, age, gender) VALUES (?, ?, ?)', [data.name, data.age, data.gender]);
          connection.release();
          console.log('Data inserted into database!');
        } catch (error) {
          console.error(error);
        }
      }
    });
  } catch (error) {
    console.error(error);
  }
}