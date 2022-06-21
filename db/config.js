require('dotenv').config();
const { Pool } = require('pg');

let configPool
if (process.env.DATABASE_URL === undefined) {
  configPool = {
    user: process.env.USER,
    host: process.env.HOST,
    database: process.env.DATABASE,
    password: process.env.PASSWORD,
  }
} else {
  configPool = {
    connectionString: process.env.DATABASE_URL,
    ssl: {
      rejectUnauthorized: false
    }
  }
} // -this- creates my database connection -!-

const pool = new Pool(configPool);


module.exports = { pool }; 