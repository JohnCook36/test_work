const express = require('express')
const PORT = process.env.PORT || 8080
const app = express()
const cors = require('cors')
const cryptoRouter = require('./routes/crypto.routes')


app.use(cors({
  origin: '*'
}))
app.use(express.json())
app.use('/', cryptoRouter)

app.listen(PORT, () => {
  console.log(`Server started on port ${PORT}`)
})
