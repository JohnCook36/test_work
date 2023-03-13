const Pool = require('pg').Pool
const pool = new Pool({
  user: 'postgres',
  password: 'Borman199*',
  host: 'localhost',
  port: 5432,
  database: 'crypto'
})

module.exports = pool