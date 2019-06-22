process.env.API_URI = 'http://localhost:3101'

console.log("hello world")
const express = require('express')
const app = express()

app.get('/', function (req, res) {
  res.send('Hello World')
})
 
app.listen(3102)