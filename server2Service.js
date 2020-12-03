const express = require('express')
const app = express()
const port = 2000

app.use(express.json())

app.get('/', (req, res) => {
    res.send('Server2')
  })

 
app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})