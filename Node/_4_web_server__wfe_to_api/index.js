process.env.API_URI = 'http://localhost:3101'

console.log("hello world")
const express = require('express')
const path = require('path')
const app = express()

app.get('/', function (req, res) {
  res.send('Hello World')
})
 
app.use('/css/', express.static(path.join(__dirname, '/content/css')));
app.use('/images/', express.static(path.join(__dirname, '/content/images')));
app.use('/js/', express.static(path.join(__dirname, '/content/js')));

app.get('/api-interact/', function (req, res) { res.sendFile(path.join(__dirname + '/content/pages/index.html')); });

app.listen(3102)