const mysql = require('mysql2/promise');

const pool = mysql.createPool({
  host: 'localhost',
  port: 5005,
  user: 'root',
  password: 'root',
  database: 'ma_base_de_donnees',
});

async function insertData(data) {
  try {
    const connection = await pool.getConnection();
    const [result, fields] = await connection.execute('INSERT INTO profil (fullname, username, pwd, mail, birthdate) VALUES (?,?,?,?,?)', [data.fullname, data.username, data.pwd, data.mail, data.birthdate]);
    connection.release();
    return rows;
  } catch (error) {
    throw new Error(`Error inserting data: ${error}`);
  }
}

module.exports = {
  insertData
};