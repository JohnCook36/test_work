const axios = require('axios')
const db = require('../db')
class useController {

  async parseInfo(req, res) {
    let data = await axios.get('https://api.coingecko.com/api/v3/global')

    await db.query(
      `DELETE FROM cripto`,
    )

    let values = Object.entries(data.data.data.total_market_cap).map(([key, value]) => `('${key}', '${value}')`).join(',')

    await db.query(
      `INSERT INTO cripto (code, percentage) values ${values}`
    )

    res.send('OK')
  }

  async showInfo(req, res) {
    await db.query(`SELECT * FROM cripto`, (error, rows) => {
      res.send(rows.rows)
    })
  }

}

module.exports = new useController()
